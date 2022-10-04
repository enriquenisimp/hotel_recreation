import 'package:hotel_recreation/features/properties/domain/entities/properties_result.dart';

class SearchProperties{
  final int totalCount;
  final List<PropertiesResult> results;

  SearchProperties({
    required this.totalCount,
    required this.results,
  });
}