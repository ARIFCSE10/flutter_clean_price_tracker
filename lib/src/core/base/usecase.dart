import 'repository.dart';

abstract class UseCase<T extends Repository> {
  final T repository;

  UseCase(this.repository);
}

abstract class IUsecase<P, R> {
  R call(P params);
}
