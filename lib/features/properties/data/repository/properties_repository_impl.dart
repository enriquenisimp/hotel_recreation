import 'package:dartz/dartz.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/data/mappers/search_properties_dto_mapper.dart';
import 'package:hotel_recreation/features/properties/data/models/search_properties/search_properties_dto.dart';
import 'package:hotel_recreation/features/properties/data/sources/remote/properties_remote_source.dart';
import 'package:hotel_recreation/features/properties/domain/repositories/properties_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PropertiesRepository)
class PropertiesRepositoryImpl extends PropertiesRepository {
  PropertiesRepositoryImpl({
    required PropertiesRemoteSource remoteDataSource,
    required SearchPropertiesDTOMapper searchPropertiesDTOMapper,
  })  : _remoteDataSource = remoteDataSource,
        _searchPropertiesDTOMapper = searchPropertiesDTOMapper;
  final PropertiesRemoteSource _remoteDataSource;
  final SearchPropertiesDTOMapper _searchPropertiesDTOMapper;

  @override
  Future<Either<Failure, SearchPropertiesDTO>> getListPropertiesRepository(
    Map<String, dynamic> parameters,
  ) async {
    try {
      final model = await _remoteDataSource.getPropertiesList(parameters);
      if (model?.data != null) {
        return Right(
          _searchPropertiesDTOMapper.fromRemote(
            model!.data.body.searchProperties,
          ),
        );
      } else {
        return const Left(
          Failure(
            'Error formatting',
          ),
        );
      }
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  void getDetailPropertyRepository() {
    // TODO(Enrique): implement getDetailPropertyRepository
    throw UnimplementedError();
  }
}
