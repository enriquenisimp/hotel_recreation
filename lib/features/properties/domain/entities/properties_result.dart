import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hotel_recreation/features/properties/domain/entities/guest_review.dart';

@immutable
class PropertiesResultEntity extends Equatable {

  const PropertiesResultEntity({
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.guestReviews,
    this.starRating,
    this.neighbourhood,
    this.pimmsAttributes,
    this.coupon,
    this.roomsLeft,
    this.providerType,
    this.supplierHotelId,
  });
  final int id;
  final String name;
  final String thumbnailUrl;
  final double? starRating;
  final GuestReviewEntity? guestReviews;
  final String? neighbourhood;
  final String? pimmsAttributes;
  final String? coupon;
  final int? roomsLeft;
  final String? providerType;
  final int? supplierHotelId;

  @override
  List<Object?> get props => [
        id,
        name,
        thumbnailUrl,
        guestReviews,
        starRating,
        neighbourhood,
        pimmsAttributes,
        coupon,
        roomsLeft,
        providerType,
        supplierHotelId,
      ];
}
