import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_recreation/core/error/exceptions.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/data/models/search_properties/search_properties_dto.dart';
import 'package:hotel_recreation/features/properties/domain/mapper/search_properties_mapper.dart';
import 'package:hotel_recreation/features/properties/domain/repositories/properties_repository.dart';
import 'package:hotel_recreation/features/properties/domain/usecases/get_list_properties_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockPropertiesRepository extends Mock implements PropertiesRepository {}

class MockSearchPropertiesMapper extends Mock
    implements SearchPropertiesMapper {}

void main() {
  late PropertiesRepository propertiesRepository;
  late GetListPropertiesUseCase getListPropertiesUseCase;
  setUp(() {
    propertiesRepository = MockPropertiesRepository();
    getListPropertiesUseCase = GetListPropertiesUseCase(
      propertiesRepository,
      MockSearchPropertiesMapper(),
    );
  });

  test(
      'if repository get an exception,'
      ' it should return a Failure answer in the Left', () async {
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
        Right(
          SearchPropertiesDTO(
            totalCount: 0,
            propertiesResult: [],
          ),
        ),
      ),
    );

    final result = await getListPropertiesUseCase(
      Params({}),
    );

    expect(
      result,
      Right(
        SearchPropertiesDTO(
          totalCount: 0,
          propertiesResult: [],
        ),
      ),
    );
  });
}
