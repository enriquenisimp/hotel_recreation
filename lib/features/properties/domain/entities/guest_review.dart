import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class GuestReviewEntity extends Equatable {
  const GuestReviewEntity({
    required this.rating,
    required this.totalReviews,
  });
  final String rating;
  final int totalReviews;

  @override
  List<Object?> get props => [rating, totalReviews];
}
