import 'package:dartz/dartz.dart';
import 'package:hotel_recreation/core/domain/usecases/usecase.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/domain/repositories/properties_repository.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';
import 'package:hotel_recreation/features/properties/domain/mapper/search_properties_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetListPropertiesUseCase extends UseCase<SearchPropertiesEntity, Params> {
  GetListPropertiesUseCase(
    PropertiesRepository propertiesRepository,
    SearchPropertiesMapper searchPropertiesMapper,
  )   : _propertiesRepository = propertiesRepository,
        _searchPropertiesMapper = searchPropertiesMapper;

  final PropertiesRepository _propertiesRepository;
  final SearchPropertiesMapper _searchPropertiesMapper;
  @override
  Future<Either<Failure, SearchPropertiesEntity>> call(Params params) async {

    final result = await _propertiesRepository.getListPropertiesRepository(
      params.parameters,
    );

    return result.fold(
      Left.new,
      (searchPropertiesModel) => Right(
        _searchPropertiesMapper.fromModelToEntity(
          searchPropertiesModel,
        ),
      ),
    );
  }
}

class Params {

  Params(this.parameters);
  final Map<String, dynamic> parameters;
}
