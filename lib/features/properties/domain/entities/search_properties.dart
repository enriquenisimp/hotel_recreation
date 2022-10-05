import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hotel_recreation/features/properties/domain/entities/properties_result.dart';

@immutable
class SearchProperties extends Equatable{
  final int totalCount;
  final List<PropertiesResult> results;

  const SearchProperties({
    required this.totalCount,
    required this.results,
  });

  @override
  List<Object?> get props => [totalCount, results];
}