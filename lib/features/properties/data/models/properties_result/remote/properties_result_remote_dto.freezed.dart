// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'properties_result_remote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PropertiesResultsRemoteDTO _$PropertiesResultsRemoteDTOFromJson(
    Map<String, dynamic> json) {
  return _PropertiesResultsRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$PropertiesResultsRemoteDTO {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "timestamp")
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "starRating")
  double get starRating => throw _privateConstructorUsedError;
  @JsonKey(name: "guestReviews")
  GuestReviewRemoteDTO? get guestReviews => throw _privateConstructorUsedError;
  @JsonKey(name: "neighbourhood")
  String? get neighbourhood => throw _privateConstructorUsedError;
  @JsonKey(name: "pimmsAttributes")
  String? get pimmsAttributes => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon")
  String? get coupon => throw _privateConstructorUsedError;
  @JsonKey(name: "roomsLeft")
  int? get roomsLeft => throw _privateConstructorUsedError;
  @JsonKey(name: "providerType")
  String? get providerType => throw _privateConstructorUsedError;
  @JsonKey(name: "supplierHotelId")
  int? get supplierHotelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertiesResultsRemoteDTOCopyWith<PropertiesResultsRemoteDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesResultsRemoteDTOCopyWith<$Res> {
  factory $PropertiesResultsRemoteDTOCopyWith(PropertiesResultsRemoteDTO value,
          $Res Function(PropertiesResultsRemoteDTO) then) =
      _$PropertiesResultsRemoteDTOCopyWithImpl<$Res,
          PropertiesResultsRemoteDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "timestamp") String thumbnailUrl,
      @JsonKey(name: "starRating") double starRating,
      @JsonKey(name: "guestReviews") GuestReviewRemoteDTO? guestReviews,
      @JsonKey(name: "neighbourhood") String? neighbourhood,
      @JsonKey(name: "pimmsAttributes") String? pimmsAttributes,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "roomsLeft") int? roomsLeft,
      @JsonKey(name: "providerType") String? providerType,
      @JsonKey(name: "supplierHotelId") int? supplierHotelId});

  $GuestReviewRemoteDTOCopyWith<$Res>? get guestReviews;
}

/// @nodoc
class _$PropertiesResultsRemoteDTOCopyWithImpl<$Res,
        $Val extends PropertiesResultsRemoteDTO>
    implements $PropertiesResultsRemoteDTOCopyWith<$Res> {
  _$PropertiesResultsRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailUrl = null,
    Object? starRating = null,
    Object? guestReviews = freezed,
    Object? neighbourhood = freezed,
    Object? pimmsAttributes = freezed,
    Object? coupon = freezed,
    Object? roomsLeft = freezed,
    Object? providerType = freezed,
    Object? supplierHotelId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      starRating: null == starRating
          ? _value.starRating
          : starRating // ignore: cast_nullable_to_non_nullable
              as double,
      guestReviews: freezed == guestReviews
          ? _value.guestReviews
          : guestReviews // ignore: cast_nullable_to_non_nullable
              as GuestReviewRemoteDTO?,
      neighbourhood: freezed == neighbourhood
          ? _value.neighbourhood
          : neighbourhood // ignore: cast_nullable_to_non_nullable
              as String?,
      pimmsAttributes: freezed == pimmsAttributes
          ? _value.pimmsAttributes
          : pimmsAttributes // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      roomsLeft: freezed == roomsLeft
          ? _value.roomsLeft
          : roomsLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      providerType: freezed == providerType
          ? _value.providerType
          : providerType // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierHotelId: freezed == supplierHotelId
          ? _value.supplierHotelId
          : supplierHotelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GuestReviewRemoteDTOCopyWith<$Res>? get guestReviews {
    if (_value.guestReviews == null) {
      return null;
    }

    return $GuestReviewRemoteDTOCopyWith<$Res>(_value.guestReviews!, (value) {
      return _then(_value.copyWith(guestReviews: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PropertiesResultsRemoteDTOCopyWith<$Res>
    implements $PropertiesResultsRemoteDTOCopyWith<$Res> {
  factory _$$_PropertiesResultsRemoteDTOCopyWith(
          _$_PropertiesResultsRemoteDTO value,
          $Res Function(_$_PropertiesResultsRemoteDTO) then) =
      __$$_PropertiesResultsRemoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "timestamp") String thumbnailUrl,
      @JsonKey(name: "starRating") double starRating,
      @JsonKey(name: "guestReviews") GuestReviewRemoteDTO? guestReviews,
      @JsonKey(name: "neighbourhood") String? neighbourhood,
      @JsonKey(name: "pimmsAttributes") String? pimmsAttributes,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "roomsLeft") int? roomsLeft,
      @JsonKey(name: "providerType") String? providerType,
      @JsonKey(name: "supplierHotelId") int? supplierHotelId});

  @override
  $GuestReviewRemoteDTOCopyWith<$Res>? get guestReviews;
}

/// @nodoc
class __$$_PropertiesResultsRemoteDTOCopyWithImpl<$Res>
    extends _$PropertiesResultsRemoteDTOCopyWithImpl<$Res,
        _$_PropertiesResultsRemoteDTO>
    implements _$$_PropertiesResultsRemoteDTOCopyWith<$Res> {
  __$$_PropertiesResultsRemoteDTOCopyWithImpl(
      _$_PropertiesResultsRemoteDTO _value,
      $Res Function(_$_PropertiesResultsRemoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailUrl = null,
    Object? starRating = null,
    Object? guestReviews = freezed,
    Object? neighbourhood = freezed,
    Object? pimmsAttributes = freezed,
    Object? coupon = freezed,
    Object? roomsLeft = freezed,
    Object? providerType = freezed,
    Object? supplierHotelId = freezed,
  }) {
    return _then(_$_PropertiesResultsRemoteDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      starRating: null == starRating
          ? _value.starRating
          : starRating // ignore: cast_nullable_to_non_nullable
              as double,
      guestReviews: freezed == guestReviews
          ? _value.guestReviews
          : guestReviews // ignore: cast_nullable_to_non_nullable
              as GuestReviewRemoteDTO?,
      neighbourhood: freezed == neighbourhood
          ? _value.neighbourhood
          : neighbourhood // ignore: cast_nullable_to_non_nullable
              as String?,
      pimmsAttributes: freezed == pimmsAttributes
          ? _value.pimmsAttributes
          : pimmsAttributes // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      roomsLeft: freezed == roomsLeft
          ? _value.roomsLeft
          : roomsLeft // ignore: cast_nullable_to_non_nullable
              as int?,
      providerType: freezed == providerType
          ? _value.providerType
          : providerType // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierHotelId: freezed == supplierHotelId
          ? _value.supplierHotelId
          : supplierHotelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PropertiesResultsRemoteDTO implements _PropertiesResultsRemoteDTO {
  const _$_PropertiesResultsRemoteDTO(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "timestamp") required this.thumbnailUrl,
      @JsonKey(name: "starRating") required this.starRating,
      @JsonKey(name: "guestReviews") this.guestReviews,
      @JsonKey(name: "neighbourhood") this.neighbourhood,
      @JsonKey(name: "pimmsAttributes") this.pimmsAttributes,
      @JsonKey(name: "coupon") this.coupon,
      @JsonKey(name: "roomsLeft") this.roomsLeft,
      @JsonKey(name: "providerType") this.providerType,
      @JsonKey(name: "supplierHotelId") this.supplierHotelId});

  factory _$_PropertiesResultsRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PropertiesResultsRemoteDTOFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "timestamp")
  final String thumbnailUrl;
  @override
  @JsonKey(name: "starRating")
  final double starRating;
  @override
  @JsonKey(name: "guestReviews")
  final GuestReviewRemoteDTO? guestReviews;
  @override
  @JsonKey(name: "neighbourhood")
  final String? neighbourhood;
  @override
  @JsonKey(name: "pimmsAttributes")
  final String? pimmsAttributes;
  @override
  @JsonKey(name: "coupon")
  final String? coupon;
  @override
  @JsonKey(name: "roomsLeft")
  final int? roomsLeft;
  @override
  @JsonKey(name: "providerType")
  final String? providerType;
  @override
  @JsonKey(name: "supplierHotelId")
  final int? supplierHotelId;

  @override
  String toString() {
    return 'PropertiesResultsRemoteDTO(id: $id, name: $name, thumbnailUrl: $thumbnailUrl, starRating: $starRating, guestReviews: $guestReviews, neighbourhood: $neighbourhood, pimmsAttributes: $pimmsAttributes, coupon: $coupon, roomsLeft: $roomsLeft, providerType: $providerType, supplierHotelId: $supplierHotelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PropertiesResultsRemoteDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.starRating, starRating) ||
                other.starRating == starRating) &&
            (identical(other.guestReviews, guestReviews) ||
                other.guestReviews == guestReviews) &&
            (identical(other.neighbourhood, neighbourhood) ||
                other.neighbourhood == neighbourhood) &&
            (identical(other.pimmsAttributes, pimmsAttributes) ||
                other.pimmsAttributes == pimmsAttributes) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.roomsLeft, roomsLeft) ||
                other.roomsLeft == roomsLeft) &&
            (identical(other.providerType, providerType) ||
                other.providerType == providerType) &&
            (identical(other.supplierHotelId, supplierHotelId) ||
                other.supplierHotelId == supplierHotelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      thumbnailUrl,
      starRating,
      guestReviews,
      neighbourhood,
      pimmsAttributes,
      coupon,
      roomsLeft,
      providerType,
      supplierHotelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertiesResultsRemoteDTOCopyWith<_$_PropertiesResultsRemoteDTO>
      get copyWith => __$$_PropertiesResultsRemoteDTOCopyWithImpl<
          _$_PropertiesResultsRemoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertiesResultsRemoteDTOToJson(
      this,
    );
  }
}

abstract class _PropertiesResultsRemoteDTO
    implements PropertiesResultsRemoteDTO {
  const factory _PropertiesResultsRemoteDTO(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "timestamp") required final String thumbnailUrl,
      @JsonKey(name: "starRating") required final double starRating,
      @JsonKey(name: "guestReviews") final GuestReviewRemoteDTO? guestReviews,
      @JsonKey(name: "neighbourhood") final String? neighbourhood,
      @JsonKey(name: "pimmsAttributes") final String? pimmsAttributes,
      @JsonKey(name: "coupon") final String? coupon,
      @JsonKey(name: "roomsLeft") final int? roomsLeft,
      @JsonKey(name: "providerType") final String? providerType,
      @JsonKey(name: "supplierHotelId")
      final int? supplierHotelId}) = _$_PropertiesResultsRemoteDTO;

  factory _PropertiesResultsRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$_PropertiesResultsRemoteDTO.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "timestamp")
  String get thumbnailUrl;
  @override
  @JsonKey(name: "starRating")
  double get starRating;
  @override
  @JsonKey(name: "guestReviews")
  GuestReviewRemoteDTO? get guestReviews;
  @override
  @JsonKey(name: "neighbourhood")
  String? get neighbourhood;
  @override
  @JsonKey(name: "pimmsAttributes")
  String? get pimmsAttributes;
  @override
  @JsonKey(name: "coupon")
  String? get coupon;
  @override
  @JsonKey(name: "roomsLeft")
  int? get roomsLeft;
  @override
  @JsonKey(name: "providerType")
  String? get providerType;
  @override
  @JsonKey(name: "supplierHotelId")
  int? get supplierHotelId;
  @override
  @JsonKey(ignore: true)
  _$$_PropertiesResultsRemoteDTOCopyWith<_$_PropertiesResultsRemoteDTO>
      get copyWith => throw _privateConstructorUsedError;
}
