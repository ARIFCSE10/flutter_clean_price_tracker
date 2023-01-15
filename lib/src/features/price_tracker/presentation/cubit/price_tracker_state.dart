part of 'price_tracker_cubit.dart';

abstract class PriceTrackerState extends Equatable {
  const PriceTrackerState();

  @override
  List<Object?> get props => [];
}

class PriceTrackerInitial extends PriceTrackerState {}

class PriceTrackerLoading extends PriceTrackerState {}

class PriceTrackerActiveSymbolLoaded extends PriceTrackerState {
  const PriceTrackerActiveSymbolLoaded({
    this.marketMap,
    this.symbolMap,
    this.price,
    this.lastPrice,
    this.isPriceLoading = false,
  });
  final List<MapEntry<String, String>>? marketMap;
  final List<MapEntry<String, String>>? symbolMap;
  final double? price;
  final double? lastPrice;
  final bool? isPriceLoading;

  @override
  List<Object?> get props =>
      [marketMap, symbolMap, price, lastPrice, isPriceLoading];

  PriceTrackerActiveSymbolLoaded copyWith({
    List<MapEntry<String, String>>? marketMap,
    List<MapEntry<String, String>>? symbolMap,
    double? price,
    double? lastPrice,
    bool isPriceLoading = false,
  }) {
    return PriceTrackerActiveSymbolLoaded(
      marketMap: marketMap ?? this.marketMap,
      symbolMap: symbolMap ?? this.symbolMap,
      price: isPriceLoading ? null : price,
      lastPrice: isPriceLoading ? null : lastPrice,
      isPriceLoading: isPriceLoading,
    );
  }
}
