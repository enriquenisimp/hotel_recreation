// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_properties_remote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchPropertiesRemoteDTO _$SearchPropertiesRemoteDTOFromJson(
    Map<String, dynamic> json) {
  return _SearchPropertiesRemoteDTO.fromJson(json);
}

/// @nodoc
mixin _$SearchPropertiesRemoteDTO {
  @JsonKey(name: "totalCount")
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<PropertiesResultsRemoteDTO> get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPropertiesRemoteDTOCopyWith<SearchPropertiesRemoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPropertiesRemoteDTOCopyWith<$Res> {
  factory $SearchPropertiesRemoteDTOCopyWith(SearchPropertiesRemoteDTO value,
          $Res Function(SearchPropertiesRemoteDTO) then) =
      _$SearchPropertiesRemoteDTOCopyWithImpl<$Res, SearchPropertiesRemoteDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalCount") int totalCount,
      @JsonKey(name: "results") List<PropertiesResultsRemoteDTO> results});
}

/// @nodoc
class _$SearchPropertiesRemoteDTOCopyWithImpl<$Res,
        $Val extends SearchPropertiesRemoteDTO>
    implements $SearchPropertiesRemoteDTOCopyWith<$Res> {
  _$SearchPropertiesRemoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PropertiesResultsRemoteDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchPropertiesRemoteDTOCopyWith<$Res>
    implements $SearchPropertiesRemoteDTOCopyWith<$Res> {
  factory _$$_SearchPropertiesRemoteDTOCopyWith(
          _$_SearchPropertiesRemoteDTO value,
          $Res Function(_$_SearchPropertiesRemoteDTO) then) =
      __$$_SearchPropertiesRemoteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalCount") int totalCount,
      @JsonKey(name: "results") List<PropertiesResultsRemoteDTO> results});
}

/// @nodoc
class __$$_SearchPropertiesRemoteDTOCopyWithImpl<$Res>
    extends _$SearchPropertiesRemoteDTOCopyWithImpl<$Res,
        _$_SearchPropertiesRemoteDTO>
    implements _$$_SearchPropertiesRemoteDTOCopyWith<$Res> {
  __$$_SearchPropertiesRemoteDTOCopyWithImpl(
      _$_SearchPropertiesRemoteDTO _value,
      $Res Function(_$_SearchPropertiesRemoteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? results = null,
  }) {
    return _then(_$_SearchPropertiesRemoteDTO(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PropertiesResultsRemoteDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchPropertiesRemoteDTO implements _SearchPropertiesRemoteDTO {
  const _$_SearchPropertiesRemoteDTO(
      {@JsonKey(name: "totalCount") required this.totalCount,
      @JsonKey(name: "results")
      required final List<PropertiesResultsRemoteDTO> results})
      : _results = results;

  factory _$_SearchPropertiesRemoteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SearchPropertiesRemoteDTOFromJson(json);

  @override
  @JsonKey(name: "totalCount")
  final int totalCount;
  final List<PropertiesResultsRemoteDTO> _results;
  @override
  @JsonKey(name: "results")
  List<PropertiesResultsRemoteDTO> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchPropertiesRemoteDTO(totalCount: $totalCount, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPropertiesRemoteDTO &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPropertiesRemoteDTOCopyWith<_$_SearchPropertiesRemoteDTO>
      get copyWith => __$$_SearchPropertiesRemoteDTOCopyWithImpl<
          _$_SearchPropertiesRemoteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchPropertiesRemoteDTOToJson(
      this,
    );
  }
}

abstract class _SearchPropertiesRemoteDTO implements SearchPropertiesRemoteDTO {
  const factory _SearchPropertiesRemoteDTO(
          {@JsonKey(name: "totalCount") required final int totalCount,
          @JsonKey(name: "results")
          required final List<PropertiesResultsRemoteDTO> results}) =
      _$_SearchPropertiesRemoteDTO;

  factory _SearchPropertiesRemoteDTO.fromJson(Map<String, dynamic> json) =
      _$_SearchPropertiesRemoteDTO.fromJson;

  @override
  @JsonKey(name: "totalCount")
  int get totalCount;
  @override
  @JsonKey(name: "results")
  List<PropertiesResultsRemoteDTO> get results;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPropertiesRemoteDTOCopyWith<_$_SearchPropertiesRemoteDTO>
      get copyWith => throw _privateConstructorUsedError;
}
