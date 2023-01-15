import 'package:flutter_clean_price_tracker/src/core/base/repository.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/entities/active_symbol_entity.dart';

abstract class PriceTrackerRepository extends Repository {
  Future<List<ActiveSymbolEntity>> getActiveSymbols();
  Stream<double?> getPriceStream({required String symbol});
}
