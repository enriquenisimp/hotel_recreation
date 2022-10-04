import 'package:dartz/dartz.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/data/data_source/properties_remote_data_source.dart';
import 'package:hotel_recreation/features/properties/data/repository/properties_repository.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:PropertiesRepository)
class PropertiesRepositoryImpl extends PropertiesRepository{
  final PropertiesRemoteDataSource _remoteDataSource;

  PropertiesRepositoryImpl(this._remoteDataSource);
  @override
  getDetailPropertyRepository() {
    // TODO: implement getDetailPropertyRepository
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, SearchProperties>> getListPropertiesRepository(Map<String, dynamic> parameters)async  {

    try {
      print("called1");
     final model = await _remoteDataSource.getPropertiesListRemote(parameters);
      print("called2");
       return Right(model.data.body.searchProperties);
    }on Exception{
      return Left(Failure("Server Error"));
    }
  }
}