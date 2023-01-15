import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/entities/active_symbol_entity.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/usecases/get_active_symbol_usecase.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/usecases/get_price_stream_usecase.dart';
import 'package:injectable/injectable.dart';

part 'price_tracker_state.dart';

@singleton
class PriceTrackerCubit extends Cubit<PriceTrackerState> {
  PriceTrackerCubit(this._getActiveSymbolUseCase, this._getPricelUseCase)
      : super(PriceTrackerInitial()) {
    _getActiveSymbols();
  }

  List<ActiveSymbolEntity>? _activeSymbols;
  List<ActiveSymbolEntity> get activeSymbols => _activeSymbols ?? [];

  final GetActiveSymbolUseCase _getActiveSymbolUseCase;
  final GetPriceStreamUseCase _getPricelUseCase;
  double? _lastPrice;
  Stream? _priceStream;
  StreamSubscription? _priceStreamSub;
  String? _lastMarket, _lastSymbol;

  void _getActiveSymbols() async {
    emit(PriceTrackerLoading());
    _activeSymbols ??= await _getActiveSymbolUseCase.call(null);
    _setAvailableMarketList();
  }

  void _setAvailableMarketList() {
    final marketMap = <String, String>{};
    _activeSymbols?.forEach((element) {
      marketMap[element.market] = element.marketDisplayName;
    });

    emit(PriceTrackerActiveSymbolLoaded(
      marketMap: marketMap.entries.toSet().toList(),
    ));
  }

  void setSymbolFromMarket({
    required String market,
  }) {
    if (market == _lastMarket) return;

    final symbolMap = <String, String>{};
    _activeSymbols
        ?.where((element) => element.market == market)
        .forEach((element) {
      symbolMap[element.symbol] = element.displayName;
    });

    final loadedState = (state as PriceTrackerActiveSymbolLoaded);
    emit(loadedState.copyWith(
      symbolMap: symbolMap.entries.toSet().toList(),
      price: loadedState.price,
      lastPrice: loadedState.lastPrice,
    ));

    _lastMarket = market;
  }

  void listenForPriceChange({required String symbol}) async {
    if (symbol == _lastSymbol) return;

    emit((state as PriceTrackerActiveSymbolLoaded).copyWith(
      isPriceLoading: true,
    ));
    _cancelSubscription().then((_) {
      _subscribeToPriceChange(symbol);
    });

    _lastSymbol = symbol;
  }

  void _subscribeToPriceChange(String symbol) {
    _priceStream = _getPricelUseCase.call(symbol);
    _priceStreamSub = _priceStream?.listen(
      (price) => _onPriceChange(price),
    );
    _priceStreamSub?.resume();
  }

  void _onPriceChange(
    price,
  ) {
    emit((state as PriceTrackerActiveSymbolLoaded).copyWith(
      price: price,
      lastPrice: _lastPrice,
    ));
    _lastPrice = price;
  }

  Future<void> _cancelSubscription() async {
    _priceStreamSub?.pause();
    await _priceStreamSub?.cancel();
  }

  @disposeMethod
  void dispose() {
    _cancelSubscription();
    _priceStream?.drain();
  }
}
