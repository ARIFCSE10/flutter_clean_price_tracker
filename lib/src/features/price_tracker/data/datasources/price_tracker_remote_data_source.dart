import 'dart:async';
import 'dart:convert';

import 'package:flutter_clean_price_tracker/src/core/service/web_socket_client.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/data/models/active_symbol_model/active_symbol.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/data/models/active_symbol_model/active_symbol_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class PriceTrackerRemoteDataSource {
  final WebSocketClient client;
  PriceTrackerRemoteDataSource(this.client);
  static String forgetCode = '';

  Future<List<ActiveSymbol>> getActiveSymbols() async {
    client.channel.sink
        .add('{"active_symbols": "brief", "product_type": "basic"}');
    final result = await client.stream.stream.first;

    final ActiveSymbolModel activeSymbolModel =
        ActiveSymbolModel.fromJson(jsonDecode(result));

    return await Future.value(activeSymbolModel.activeSymbols);
  }

  Stream<double?> getPriceStream({required String symbol}) {
    if (forgetCode.isNotEmpty) {
      client.channel.sink.add('{"forget": "$forgetCode"}');
    }
    client.channel.sink.add('{"ticks": "$symbol", "subscribe": 1}');
    return client.stream.stream.map((event) {
      final Map<String, dynamic> json = jsonDecode(event);
      if (json.containsKey('subscription')) {
        forgetCode = json['subscription']['id'];
      }
      if (json.containsKey('tick')) {
        final Map<String, dynamic> tick = json['tick'];
        final double price = tick['ask'];
        return price;
      }
      return null;
    });
  }
}
