import 'package:flutter_clean_price_tracker/src/core/base/usecase.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/repositories/price_tracker_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPriceStreamUseCase extends UseCase<PriceTrackerRepository>
    implements IUsecase<String, Stream<double?>> {
  GetPriceStreamUseCase(PriceTrackerRepository repository) : super(repository);

  @override
  Stream<double?> call(String symbol) {
    return repository.getPriceStream(symbol: symbol);
  }
}
