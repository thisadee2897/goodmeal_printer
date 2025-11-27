// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retail_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RetailHistoryModel _$RetailHistoryModelFromJson(Map<String, dynamic> json) {
  return _RetailHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$RetailHistoryModel {
  @JsonKey(name: 'header')
  HeaderRetailHistoryModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<DetailRetailHistoryModel>? get details =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'footer')
  FooterRetailHistoryModel? get footer => throw _privateConstructorUsedError;

  /// Serializes this RetailHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetailHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetailHistoryModelCopyWith<RetailHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetailHistoryModelCopyWith<$Res> {
  factory $RetailHistoryModelCopyWith(
          RetailHistoryModel value, $Res Function(RetailHistoryModel) then) =
      _$RetailHistoryModelCopyWithImpl<$Res, RetailHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'header') HeaderRetailHistoryModel? header,
      @JsonKey(name: 'details') List<DetailRetailHistoryModel>? details,
      @JsonKey(name: 'footer') FooterRetailHistoryModel? footer});

  $HeaderRetailHistoryModelCopyWith<$Res>? get header;
  $FooterRetailHistoryModelCopyWith<$Res>? get footer;
}

/// @nodoc
class _$RetailHistoryModelCopyWithImpl<$Res, $Val extends RetailHistoryModel>
    implements $RetailHistoryModelCopyWith<$Res> {
  _$RetailHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetailHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? details = freezed,
    Object? footer = freezed,
  }) {
    return _then(_value.copyWith(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderRetailHistoryModel?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailRetailHistoryModel>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as FooterRetailHistoryModel?,
    ) as $Val);
  }

  /// Create a copy of RetailHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeaderRetailHistoryModelCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $HeaderRetailHistoryModelCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }

  /// Create a copy of RetailHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FooterRetailHistoryModelCopyWith<$Res>? get footer {
    if (_value.footer == null) {
      return null;
    }

    return $FooterRetailHistoryModelCopyWith<$Res>(_value.footer!, (value) {
      return _then(_value.copyWith(footer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RetailHistoryModelImplCopyWith<$Res>
    implements $RetailHistoryModelCopyWith<$Res> {
  factory _$$RetailHistoryModelImplCopyWith(_$RetailHistoryModelImpl value,
          $Res Function(_$RetailHistoryModelImpl) then) =
      __$$RetailHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'header') HeaderRetailHistoryModel? header,
      @JsonKey(name: 'details') List<DetailRetailHistoryModel>? details,
      @JsonKey(name: 'footer') FooterRetailHistoryModel? footer});

  @override
  $HeaderRetailHistoryModelCopyWith<$Res>? get header;
  @override
  $FooterRetailHistoryModelCopyWith<$Res>? get footer;
}

/// @nodoc
class __$$RetailHistoryModelImplCopyWithImpl<$Res>
    extends _$RetailHistoryModelCopyWithImpl<$Res, _$RetailHistoryModelImpl>
    implements _$$RetailHistoryModelImplCopyWith<$Res> {
  __$$RetailHistoryModelImplCopyWithImpl(_$RetailHistoryModelImpl _value,
      $Res Function(_$RetailHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetailHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? details = freezed,
    Object? footer = freezed,
  }) {
    return _then(_$RetailHistoryModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderRetailHistoryModel?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailRetailHistoryModel>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as FooterRetailHistoryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetailHistoryModelImpl implements _RetailHistoryModel {
  const _$RetailHistoryModelImpl(
      {@JsonKey(name: 'header') this.header,
      @JsonKey(name: 'details') final List<DetailRetailHistoryModel>? details,
      @JsonKey(name: 'footer') this.footer})
      : _details = details;

  factory _$RetailHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetailHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'header')
  final HeaderRetailHistoryModel? header;
  final List<DetailRetailHistoryModel>? _details;
  @override
  @JsonKey(name: 'details')
  List<DetailRetailHistoryModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'footer')
  final FooterRetailHistoryModel? footer;

  @override
  String toString() {
    return 'RetailHistoryModel(header: $header, details: $details, footer: $footer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetailHistoryModelImpl &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.footer, footer) || other.footer == footer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, header,
      const DeepCollectionEquality().hash(_details), footer);

  /// Create a copy of RetailHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetailHistoryModelImplCopyWith<_$RetailHistoryModelImpl> get copyWith =>
      __$$RetailHistoryModelImplCopyWithImpl<_$RetailHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetailHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _RetailHistoryModel implements RetailHistoryModel {
  const factory _RetailHistoryModel(
      {@JsonKey(name: 'header') final HeaderRetailHistoryModel? header,
      @JsonKey(name: 'details') final List<DetailRetailHistoryModel>? details,
      @JsonKey(name: 'footer')
      final FooterRetailHistoryModel? footer}) = _$RetailHistoryModelImpl;

  factory _RetailHistoryModel.fromJson(Map<String, dynamic> json) =
      _$RetailHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'header')
  HeaderRetailHistoryModel? get header;
  @override
  @JsonKey(name: 'details')
  List<DetailRetailHistoryModel>? get details;
  @override
  @JsonKey(name: 'footer')
  FooterRetailHistoryModel? get footer;

  /// Create a copy of RetailHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetailHistoryModelImplCopyWith<_$RetailHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
