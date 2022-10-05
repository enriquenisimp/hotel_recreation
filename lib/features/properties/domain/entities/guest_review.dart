import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
@immutable
class GuestReview extends Equatable {
  final String rating;
  final int totalReviews;

  const GuestReview({
    required this.rating,
    required this.totalReviews,
  });

  @override
  List<Object?> get props => [rating, totalReviews];
}
