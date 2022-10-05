import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_recreation/core/domain/usecases/usecase.dart';
import 'package:hotel_recreation/core/error/exceptions.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/data/repository/properties_repository.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';
import 'package:hotel_recreation/features/properties/domain/usecases/get_list_properties_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockPropertiesRepository extends Mock implements PropertiesRepository {}

void main() {
  late PropertiesRepository propertiesRepository;
  late GetListPropertiesUseCase getListPropertiesUseCase;
  setUp(() {
    propertiesRepository = MockPropertiesRepository();
    getListPropertiesUseCase = GetListPropertiesUseCase(propertiesRepository);
  });

  test(
      'if repository get an exception, it should return a Failure answer in the Left',
      () async {
    when(() => propertiesRepository.getListPropertiesRepository(any()))
        .thenAnswer(
      (invocation) => Future.value(
        Left(
          Failure(
            ServerException().toString(),
          ),
        ),
      ),
    );

    final result = await getListPropertiesUseCase(Params({}));

    expect(
      result,
      Left(
        Failure(
          ServerException().toString(),
        ),
      ),
    );
  });

  test(
      'if repository get a Well formed response, it should'
      ' return the actual SearchProperties value in th Right', () async {
    when(() => propertiesRepository.getListPropertiesRepository(any()))
        .thenAnswer(
      (invocation) => Future.value(
        const Right(SearchProperties(totalCount: 0, results: [])),
      ),
    );

    final result = await getListPropertiesUseCase(
      Params({}),
    );

    expect(
      result,
      const Right(
        SearchProperties(
          totalCount: 0,
          results: [],
        ),
      ),
    );
  });
}
