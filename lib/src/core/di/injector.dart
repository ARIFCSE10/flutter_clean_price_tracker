import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'injector.config.dart';

final GetIt locator = GetIt.I;

@InjectableInit(
  preferRelativeImports: true,
  asExtension: false,
)
void initDependencies() => init(locator);
