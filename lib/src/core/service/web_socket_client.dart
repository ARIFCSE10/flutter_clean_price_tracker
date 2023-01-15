import 'dart:async';

import 'package:flutter_clean_price_tracker/src/core/const/app_const.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

@singleton
class WebSocketClient {
  WebSocketClient() {
    _channel = WebSocketChannel.connect(Uri.parse(AppConst.webSocketUrl));
    stream.addStream(channel.stream);
  }

  final stream = StreamController.broadcast();
  late WebSocketChannel _channel;
  WebSocketChannel get channel => _channel;

  @disposeMethod
  void dispose() {
    channel.sink.close();
  }
}
