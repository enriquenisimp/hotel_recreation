import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hotel_recreation/features/core/domain/usecases/usecase.dart';
import 'package:hotel_recreation/features/core/error/failure.dart';
import 'package:hotel_recreation/features/core/presentation/bloc_status.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';
import 'package:hotel_recreation/features/properties/domain/usecases/get_list_properties_usecase.dart';
import 'package:meta/meta.dart';

part 'list_properties_state.dart';

class ListPropertiesCubit extends Cubit<ListPropertiesState> {
  ListPropertiesCubit(this._getListPropertiesUseCase)
      : super(const ListPropertiesState.initial());
  final GetListPropertiesUseCase _getListPropertiesUseCase;

  getListProperties() async {
    final result = await _getListPropertiesUseCase(
      Params(
        {
          "destinationId": '1506246',
          "pageNumber": '1',
          "pageSize": '25',
          "checkIn": '2022-01-01',
          "checkOut": '2022-03-12',
          "adults1": '1',
          "sortOrder": 'PRICE',
          "locale": 'en_US',
          "currency": 'USD'
        },
      ),
    );

    result.fold(
      (fail) {
        emit(ListPropertiesState.error(fail));
      },
      (properties) {
        if(properties.totalCount>0) {
          emit(ListPropertiesState.success(properties));
        } else{
          ListPropertiesState.empty(Failure("Empty list"));
        }
      },
    );
  }
}
