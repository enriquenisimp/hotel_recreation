import 'package:dartz/dartz.dart';
import 'package:hotel_recreation/core/error/failure.dart';
import 'package:hotel_recreation/features/properties/domain/entities/search_properties.dart';

abstract class PropertiesRepository{
  Future<Either<Failure, SearchProperties>> getListPropertiesRepository(Map<String, dynamic> parameters);
  getDetailPropertyRepository();
}