import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_recreation/core/error/exceptions.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/core/presentation/bloc_status.dart';
import 'package:hotel_recreation/features/properties/data/repository/properties_repository.dart';
import 'package:hotel_recreation/features/properties/domain/entities/guest_review.dart';
import 'package:hotel_recreation/features/properties/domain/entities/properties_result.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';
import 'package:hotel_recreation/features/properties/domain/usecases/get_list_properties_usecase.dart';
import 'package:hotel_recreation/features/properties/presentation/list_properties/bloc/list_properties_cubit.dart';
import 'package:mocktail/mocktail.dart';

class MockGetListPropertiesUseCase extends Mock
    implements GetListPropertiesUseCase {}

class FakeParams extends Fake implements Params {}

void main() {
  late ListPropertiesCubit listPropertiesCubit;
  late GetListPropertiesUseCase useCase;
  setUp(() {
    useCase = MockGetListPropertiesUseCase();
    listPropertiesCubit = ListPropertiesCubit(useCase);
    registerFallbackValue(FakeParams());
  });

  blocTest(
      'if GetListPropertiesUseCase return a Failure, Cubit should emit a error scenario ',
      build: () {
        when(() => useCase(any())).thenAnswer(
          (invocation) => Future.value(
            Left(
              Failure(ServerException().toString()),
            ),
          ),
        );
        return listPropertiesCubit;
      },
      act: (ListPropertiesCubit bloc) => bloc.getListProperties(),
      expect: () => [
            ListPropertiesState.error(
              Failure(ServerException().toString()),
            ),
          ]);

  blocTest(
      'if GetListPropertiesUseCase '
          'return a Searchproperties but empty, Cubit should emit a empty scenario',
      build: () {
        when(() => useCase(any())).thenAnswer(
              (invocation) => Future.value(
            const Right(
              SearchProperties(
                totalCount: 0,
                results: [],
              ),
            ),
          ),
        );
        return listPropertiesCubit;
      },
      act: (ListPropertiesCubit bloc) => bloc.getListProperties(),
      expect: () => [
        const ListPropertiesState.empty(
          Failure(
            "Empty list"
          ),
        ),
      ]);


  blocTest(
      'if GetListPropertiesUseCase '
      'return a Searchproperties, Cubit should emit a success scenario ',
      build: () {
        when(() => useCase(any())).thenAnswer(
          (invocation) => Future.value(
            const Right(
              SearchProperties(
                totalCount: 1,
                results: [
                  PropertiesResult(
                      id: 1,
                      name: "name",
                      thumbnailUrl: "thumbnailUrl",
                      guestReviews:
                          GuestReview(rating: "12", totalReviews: 122))
                ],
              ),
            ),
          ),
        );
        return listPropertiesCubit;
      },
      act: (ListPropertiesCubit bloc) => bloc.getListProperties(),
      expect: () => [
            const ListPropertiesState.success(
              SearchProperties(
                totalCount: 1,
                results: [
                  PropertiesResult(
                      id: 1,
                      name: "name",
                      thumbnailUrl: "thumbnailUrl",
                      guestReviews:
                          GuestReview(rating: "12", totalReviews: 122))
                ],
              ),
            ),
          ]);
}
