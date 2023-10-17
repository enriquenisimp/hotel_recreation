// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/properties/data/interceptors/properties_interceptor.dart'
    as _i5;
import '../../features/properties/data/repository/properties_repository_impl.dart'
    as _i8;
import '../../features/properties/data/sources/remote/properties_remote_source.dart'
    as _i6;
import '../../features/properties/domain/mapper/guest_review_mapper.dart'
    as _i4;
import '../../features/properties/domain/mapper/properties_result_mapper.dart'
    as _i9;
import '../../features/properties/domain/mapper/search_properties_mapper.dart'
    as _i10;
import '../../features/properties/domain/repositories/properties_repository.dart'
    as _i7;
import '../../features/properties/domain/usecases/get_list_properties_usecase.dart'
    as _i11;
import 'modules/api_module.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i4.GuestReviewMapper>(() => _i4.GuestReviewMapper());
  gh.factory<_i5.PropertiesInterceptor>(() => _i5.PropertiesInterceptor());
  gh.factory<_i6.PropertiesRemoteSource>(() => _i6.PropertiesRemoteSource(
        dio: get<_i3.Dio>(),
        propertiesInterceptor: get<_i5.PropertiesInterceptor>(),
      ));
  gh.factory<_i7.PropertiesRepository>(
      () => _i8.PropertiesRepositoryImpl(get<InvalidType>()));
  gh.factory<_i9.PropertiesResultMapper>(
      () => _i9.PropertiesResultMapper(get<_i4.GuestReviewMapper>()));
  gh.factory<_i10.SearchPropertiesMapper>(
      () => _i10.SearchPropertiesMapper(get<_i9.PropertiesResultMapper>()));
  gh.factory<_i11.GetListPropertiesUseCase>(() => _i11.GetListPropertiesUseCase(
        get<_i7.PropertiesRepository>(),
        get<_i10.SearchPropertiesMapper>(),
      ));
  return get;
}

class _$ApiModule extends _i12.ApiModule {}
