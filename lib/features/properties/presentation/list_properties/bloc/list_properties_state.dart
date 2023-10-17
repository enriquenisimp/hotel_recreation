part of 'list_properties_cubit.dart';

///Interface state for the list of properties
///In order to generate a new state it must extend from this one
abstract class ListPropertiesState extends Equatable {
  @override
  List<Object?> get props => [];
}
///Initial state of the functionality
class ListPropertiesInitialState extends ListPropertiesState {}

///Represent the loading period of the process
class ListPropertiesLoadingState extends ListPropertiesState {}

///It represent the success scenario, it needs the
///[SearchPropertiesEntity] parameter to access from the widget
class ListPropertiesSuccessState extends ListPropertiesState {

  ListPropertiesSuccessState(this.searchProperties);

  final SearchPropertiesEntity searchProperties;

  @override
  List<Object> get props => [searchProperties];
}

class ListPropertiesErrorState extends ListPropertiesState {

  ListPropertiesErrorState(this.failure);
  final Failure failure;

  @override
  List<Object> get props => [failure];
}
