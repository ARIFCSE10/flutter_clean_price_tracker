import 'package:flutter_clean_price_tracker/src/features/price_tracker/data/datasources/price_tracker_remote_data_source.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/data/models/active_symbol_model/active_symbol.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/entities/active_symbol_entity.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/repositories/price_tracker_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PriceTrackerRepository)
class PriceTrackerRepositoryImpl extends PriceTrackerRepository {
  final PriceTrackerRemoteDataSource remoteDataSource;

  PriceTrackerRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<ActiveSymbolEntity>> getActiveSymbols() async {
    final List<ActiveSymbol> activeSymbols =
        await remoteDataSource.getActiveSymbols();
    return activeSymbols.map((e) => e.toEntity()).toList();
  }

  @override
  Stream<double?> getPriceStream({required String symbol}) {
    return remoteDataSource.getPriceStream(symbol: symbol);
  }
}
