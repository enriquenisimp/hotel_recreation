// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_review_remote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuestReviewRemoteDTO _$GuestReviewRemoteDTOFromJson(Map<String, dynamic> json) {
  return _GuestReviewRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$GuestReviewRemoteDTO {
  @JsonKey(name: "rating")
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get totalReviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestReviewRemoteDTOCopyWith<GuestReviewRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestReviewRemoteDTOCopyWith<$Res> {
  factory $GuestReviewRemoteDTOCopyWith(GuestReviewRemoteDTO value,
          $Res Function(GuestReviewRemoteDTO) then) =
      _$GuestReviewRemoteDTOCopyWithImpl<$Res, GuestReviewRemoteDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "rating") String rating,
      @JsonKey(name: "total") int totalReviews});
}

/// @nodoc
class _$GuestReviewRemoteDTOCopyWithImpl<$Res,
        $Val extends GuestReviewRemoteDTO>
    implements $GuestReviewRemoteDTOCopyWith<$Res> {
  _$GuestReviewRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? totalReviews = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestReviewRemoteDTOCopyWith<$Res>
    implements $GuestReviewRemoteDTOCopyWith<$Res> {
  factory _$$_GuestReviewRemoteDTOCopyWith(_$_GuestReviewRemoteDTO value,
          $Res Function(_$_GuestReviewRemoteDTO) then) =
      __$$_GuestReviewRemoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rating") String rating,
      @JsonKey(name: "total") int totalReviews});
}

/// @nodoc
class __$$_GuestReviewRemoteDTOCopyWithImpl<$Res>
    extends _$GuestReviewRemoteDTOCopyWithImpl<$Res, _$_GuestReviewRemoteDTO>
    implements _$$_GuestReviewRemoteDTOCopyWith<$Res> {
  __$$_GuestReviewRemoteDTOCopyWithImpl(_$_GuestReviewRemoteDTO _value,
      $Res Function(_$_GuestReviewRemoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? totalReviews = null,
  }) {
    return _then(_$_GuestReviewRemoteDTO(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuestReviewRemoteDTO implements _GuestReviewRemoteDTO {
  const _$_GuestReviewRemoteDTO(
      {@JsonKey(name: "rating") required this.rating,
      @JsonKey(name: "total") required this.totalReviews});

  factory _$_GuestReviewRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GuestReviewRemoteDTOFromJson(json);

  @override
  @JsonKey(name: "rating")
  final String rating;
  @override
  @JsonKey(name: "total")
  final int totalReviews;

  @override
  String toString() {
    return 'GuestReviewRemoteDTO(rating: $rating, totalReviews: $totalReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestReviewRemoteDTO &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rating, totalReviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestReviewRemoteDTOCopyWith<_$_GuestReviewRemoteDTO> get copyWith =>
      __$$_GuestReviewRemoteDTOCopyWithImpl<_$_GuestReviewRemoteDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuestReviewRemoteDTOToJson(
      this,
    );
  }
}

abstract class _GuestReviewRemoteDTO implements GuestReviewRemoteDTO {
  const factory _GuestReviewRemoteDTO(
          {@JsonKey(name: "rating") required final String rating,
          @JsonKey(name: "total") required final int totalReviews}) =
      _$_GuestReviewRemoteDTO;

  factory _GuestReviewRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$_GuestReviewRemoteDTO.fromJson;

  @override
  @JsonKey(name: "rating")
  String get rating;
  @override
  @JsonKey(name: "total")
  int get totalReviews;
  @override
  @JsonKey(ignore: true)
  _$$_GuestReviewRemoteDTOCopyWith<_$_GuestReviewRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
