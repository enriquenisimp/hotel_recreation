import 'package:dartz/dartz.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/data/models/search_properties/search_properties_dto.dart';

abstract class PropertiesRepository {
  Future<Either<Failure, SearchPropertiesDTO>> getListPropertiesRepository(
    Map<String, dynamic> parameters,
  );
  void getDetailPropertyRepository();
}
