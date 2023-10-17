import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_recreation/core/error/exceptions.dart';
import 'package:hotel_recreation/core/error/failure.dart';
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

  blocTest<ListPropertiesCubit, ListPropertiesState>(
    'if GetListPropertiesUseCase return a Failure, '
    'Cubit should emit a error scenario ',
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
      ListPropertiesErrorState(
        Failure(ServerException().toString()),
      ),
    ],
  );

  blocTest<ListPropertiesCubit, ListPropertiesState>(
    'if GetListPropertiesUseCase '
    'return a SearchProperties but empty, Cubit should emit a empty scenario',
    build: () {
      when(() => useCase(any())).thenAnswer(
        (invocation) => Future.value(
          const Right(
            SearchPropertiesEntity(
              totalCount: 0,
              listOfProperties: [],
            ),
          ),
        ),
      );
      return listPropertiesCubit;
    },
    act: (ListPropertiesCubit bloc) => bloc.getListProperties(),
    expect: () => [
      ListPropertiesErrorState(
        const Failure(
          'Empty list',
        ),
      ),
    ],
  );

  blocTest<ListPropertiesCubit, ListPropertiesState>(
    'if GetListPropertiesUseCase '
    'return a SearchProperties, Cubit should emit a success scenario ',
    build: () {
      when(() => useCase(any())).thenAnswer(
        (invocation) => Future.value(
          const Right(
            SearchPropertiesEntity(
              totalCount: 1,
              listOfProperties: [
                PropertiesResultEntity(
                  id: 1,
                  name: 'name',
                  thumbnailUrl: 'thumbnailUrl',
                  guestReviews: GuestReviewEntity(
                    rating: '12',
                    totalReviews: 122,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      return listPropertiesCubit;
    },
    act: (ListPropertiesCubit bloc) => bloc.getListProperties(),
    expect: () => [
      ListPropertiesSuccessState(
        const SearchPropertiesEntity(
          totalCount: 1,
          listOfProperties: [
            PropertiesResultEntity(
              id: 1,
              name: 'name',
              thumbnailUrl: 'thumbnailUrl',
              guestReviews: GuestReviewEntity(
                rating: '12',
                totalReviews: 122,
              ),
            )
          ],
        ),
      ),
    ],
  );
}
