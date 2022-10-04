// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../properties/data/data_source/properties_remote_data_source.dart'
    as _i4;
import '../../properties/data/data_source/properties_remote_data_source_impl.dart'
    as _i5;
import '../../properties/data/repository/properties_repository.dart' as _i6;
import '../../properties/data/repository/properties_repository_impl.dart'
    as _i7;
import '../../properties/domain/usecases/get_list_properties_usecase.dart'
    as _i8;
import 'modules/api_module.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final apiModule = _$ApiModule();
  gh.lazySingleton<_i3.Dio>(() => apiModule.dio);
  gh.factory<_i4.PropertiesRemoteDataSource>(
      () => _i5.PropertiesRemoteDataSourceImpl(get<_i3.Dio>()));
  gh.factory<_i6.PropertiesRepository>(() =>
      _i7.PropertiesRepositoryImpl(get<_i4.PropertiesRemoteDataSource>()));
  gh.factory<_i8.GetListPropertiesUseCase>(
      () => _i8.GetListPropertiesUseCase(get<_i6.PropertiesRepository>()));
  return get;
}

class _$ApiModule extends _i9.ApiModule {}
