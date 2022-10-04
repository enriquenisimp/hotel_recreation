part of 'list_properties_cubit.dart';

@immutable
class ListPropertiesState extends Equatable{
  final SearchProperties? searchProperties;
  final BaseStatus status;
  final Failure? failure;

  const ListPropertiesState({
    this.searchProperties,
    required this.status,
    this.failure
  });

  const ListPropertiesState.initial():this(status: BaseStatus.initial);
  const ListPropertiesState.loading():this(status: BaseStatus.loading);
  const ListPropertiesState.success(SearchProperties searchProperties):this(status: BaseStatus.success, searchProperties: searchProperties);
  const ListPropertiesState.error(Failure failure):this(status: BaseStatus.error);
  const ListPropertiesState.empty(Failure failure):this(status: BaseStatus.empty);

  @override
  // TODO: implement props
  List<Object?> get props => [searchProperties, status, failure];


}

