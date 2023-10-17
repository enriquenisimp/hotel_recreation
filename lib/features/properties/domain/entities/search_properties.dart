import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hotel_recreation/features/properties/domain/entities/properties_result.dart';

@immutable
class SearchPropertiesEntity extends Equatable{

  const SearchPropertiesEntity({
    required this.totalCount,
    required this.listOfProperties,
  });
  ///Number of properties
  final int totalCount;

  ///List of properties
  final List<PropertiesResultEntity> listOfProperties;

  @override
  List<Object?> get props => [totalCount, listOfProperties];
}