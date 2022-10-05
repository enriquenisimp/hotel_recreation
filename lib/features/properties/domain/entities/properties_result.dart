import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hotel_recreation/features/properties/domain/entities/guest_review.dart';
@immutable
class PropertiesResult extends Equatable{
  final int id;
  final String name;
  final String thumbnailUrl;
  final double? starRating;
  // Address? address;
  final GuestReview guestReviews;
  // TripAdvisorGuestReviews? tripAdvisorGuestReviews;
  // List<Landmarks>? landmarks;
  //RatePlan? ratePlan;
  final String? neighbourhood;
  // Deals? deals;
  // Messaging? messaging;
  // Badging? badging;
  final String? pimmsAttributes;
  final String? coupon;
  // Coordinate? coordinate;
  final int? roomsLeft;
  final String? providerType;
  final int? supplierHotelId;

  const PropertiesResult({
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

  @override
  List<Object?> get props =>[id, name, thumbnailUrl, guestReviews, starRating, neighbourhood, pimmsAttributes, coupon, roomsLeft, providerType, supplierHotelId];
}
