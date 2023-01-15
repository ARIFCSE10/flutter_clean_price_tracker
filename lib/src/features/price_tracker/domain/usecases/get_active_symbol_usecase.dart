import 'package:flutter_clean_price_tracker/src/core/base/usecase.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/repositories/price_tracker_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/active_symbol_entity.dart';

@injectable
class GetActiveSymbolUseCase extends UseCase<PriceTrackerRepository>
    implements IUsecase<void, Future<List<ActiveSymbolEntity>>> {
  GetActiveSymbolUseCase(PriceTrackerRepository repository) : super(repository);

  @override
  Future<List<ActiveSymbolEntity>> call(_) {
    return repository.getActiveSymbols();
  }
}
