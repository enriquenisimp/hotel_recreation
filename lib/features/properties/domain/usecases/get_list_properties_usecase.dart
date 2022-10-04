import 'package:dartz/dartz.dart';
import 'package:hotel_recreation/features/core/domain/usecases/usecase.dart';
import 'package:hotel_recreation/features/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/data/repository/properties_repository.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetListPropertiesUseCase extends UseCase<SearchProperties, Params>{
  final PropertiesRepository _propertiesRepository;

  GetListPropertiesUseCase(this._propertiesRepository);
  @override
  Future<Either<Failure, SearchProperties>> call(params) {
    print("called");
    return _propertiesRepository.getListPropertiesRepository(params.parameters);
  }
}


class Params{
  final Map<String, dynamic> parameters;

  Params(this.parameters);
}