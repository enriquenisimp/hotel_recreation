import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/core/presentation/bloc_status.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';
import 'package:hotel_recreation/features/properties/domain/usecases/get_list_properties_usecase.dart';

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
          emit(const ListPropertiesState.empty(Failure("Empty list")));
        }
      },
    );
  }
}
