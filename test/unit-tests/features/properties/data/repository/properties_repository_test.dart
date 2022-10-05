import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_recreation/core/domain/usecases/usecase.dart';
import 'package:hotel_recreation/core/error/exceptions.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/data/data_source/properties_remote_data_source.dart';
import 'package:hotel_recreation/features/properties/data/model/properties_list_wrapper_model.dart';
import 'package:hotel_recreation/features/properties/data/repository/properties_repository.dart';
import 'package:hotel_recreation/features/properties/data/repository/properties_repository_impl.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';
import 'package:mocktail/mocktail.dart';

class MockRemoteDataSource extends Mock implements PropertiesRemoteDataSource {}

Future<void> main() async {
  late PropertiesRepository propertiesRepository;
  late PropertiesRemoteDataSource propertiesRemoteDataSource;
  setUp(() {
    propertiesRemoteDataSource = MockRemoteDataSource();
    propertiesRepository = PropertiesRepositoryImpl(propertiesRemoteDataSource);
  });

  test(
      'getPropertiesListRemote should throw an exception,'
      ' the repository should catch that exception and return the Failure',
      () async {
    when(() => propertiesRemoteDataSource.getPropertiesListRemote(any()))
        .thenThrow(ServerException());

    final result = await propertiesRepository.getListPropertiesRepository({});

    expect(result, Left(Failure(ServerException().toString())));
  });

  test(
      'getPropertiesListRemote should return a PropertiesListWrapperModel,'
      ' the repository should got it and return a Right(SearchProperties)',
      () async {
    when(() => propertiesRemoteDataSource.getPropertiesListRemote(any()))
        .thenAnswer((i) => Future.value(
        const PropertiesListWrapperModel(
          data: PropertiesListData(
            body: PropertiesListBody(
              searchProperties: SearchProperties(totalCount: 0, results: []),
            ),
          ),
        ),
      ),
    );

    final result = await propertiesRepository.getListPropertiesRepository({});

    expect(result, const Right(SearchProperties(totalCount: 0, results: [])));
  });
}
