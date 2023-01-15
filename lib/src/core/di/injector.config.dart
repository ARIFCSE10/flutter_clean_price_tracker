// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_clean_price_tracker/src/core/service/web_socket_client.dart'
    as _i3;
import 'package:flutter_clean_price_tracker/src/features/price_tracker/data/datasources/price_tracker_remote_data_source.dart'
    as _i4;
import 'package:flutter_clean_price_tracker/src/features/price_tracker/data/repositories/price_tracker_repository_impl.dart'
    as _i6;
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/repositories/price_tracker_repository.dart'
    as _i5;
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/usecases/get_active_symbol_usecase.dart'
    as _i7;
import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/usecases/get_price_stream_usecase.dart'
    as _i8;
import 'package:flutter_clean_price_tracker/src/features/price_tracker/presentation/cubit/price_tracker_cubit.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.WebSocketClient>(
    _i3.WebSocketClient(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i4.PriceTrackerRemoteDataSource>(
      () => _i4.PriceTrackerRemoteDataSource(gh<_i3.WebSocketClient>()));
  gh.factory<_i5.PriceTrackerRepository>(() =>
      _i6.PriceTrackerRepositoryImpl(gh<_i4.PriceTrackerRemoteDataSource>()));
  gh.factory<_i7.GetActiveSymbolUseCase>(
      () => _i7.GetActiveSymbolUseCase(gh<_i5.PriceTrackerRepository>()));
  gh.factory<_i8.GetPriceStreamUseCase>(
      () => _i8.GetPriceStreamUseCase(gh<_i5.PriceTrackerRepository>()));
  gh.singleton<_i9.PriceTrackerCubit>(
    _i9.PriceTrackerCubit(
      gh<_i7.GetActiveSymbolUseCase>(),
      gh<_i8.GetPriceStreamUseCase>(),
    ),
    dispose: (i) => i.dispose(),
  );
  return getIt;
}
