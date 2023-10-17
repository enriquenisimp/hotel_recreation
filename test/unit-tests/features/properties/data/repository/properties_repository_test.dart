import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_recreation/core/error/exceptions.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/data/mappers/search_properties_dto_mapper.dart';
import 'package:hotel_recreation/features/properties/data/models/search_properties/remote/search_properties_remote_dto.dart';
import 'package:hotel_recreation/features/properties/data/properties_list_wrapper/properties_list_wrapper_model.dart';
import 'package:hotel_recreation/features/properties/data/repository/properties_repository_impl.dart';
import 'package:hotel_recreation/features/properties/data/sources/remote/properties_remote_source.dart';
import 'package:hotel_recreation/features/properties/domain/repositories/properties_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockRemoteDataSource extends Mock implements PropertiesRemoteSource {}

class MockSearchPropertiesDTOMapper extends Mock
    implements SearchPropertiesDTOMapper {}

Future<void> main() async {
  late PropertiesRepository propertiesRepository;
  late PropertiesRemoteSource propertiesRemoteDataSource;
  setUp(() {
    propertiesRemoteDataSource = MockRemoteDataSource();
    propertiesRepository = PropertiesRepositoryImpl(
      remoteDataSource: propertiesRemoteDataSource,
      searchPropertiesDTOMapper: MockSearchPropertiesDTOMapper(),
    );
  });

  test(
      'getPropertiesListRemote should throw an exception,'
      ' the repository should catch that exception and return the Failure',
      () async {
    when(() => propertiesRemoteDataSource.getPropertiesList(any()))
        .thenThrow(ServerException());

    final result = await propertiesRepository.getListPropertiesRepository({});

    expect(result, Left(Failure(ServerException().toString())));
  });

  test(
      'getPropertiesListRemote should return a PropertiesListWrapperModel,'
      ' the repository should got it and return a Right(SearchProperties)',
      () async {
    when(() => propertiesRemoteDataSource.getPropertiesList(any())).thenAnswer(
      (i) => Future.value(
        const PropertiesListWrapperRemoteDTO(
          data: PropertiesListRemoteDTO(
            body: PropertiesListBodyRemoteDTO(
              searchProperties:
                  SearchPropertiesRemoteDTO(totalCount: 0, results: []),
            ),
          ),
        ),
      ),
    );

    final result = await propertiesRepository.getListPropertiesRepository({});

    expect(
      result,
      const Right(
        SearchPropertiesRemoteDTO(
          totalCount: 0,
          results: [],
        ),
      ),
    );
  });
}
