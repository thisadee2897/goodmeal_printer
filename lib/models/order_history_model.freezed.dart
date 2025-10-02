// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderHistoryModel _$OrderHistoryModelFromJson(Map<String, dynamic> json) {
  return _OrderHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryModel {
  @JsonKey(name: 'header')
  HeaderOrderHistoryModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<DetailOrderHistoryModel>? get details =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'footer')
  FooterOrderHistoryModel? get footer => throw _privateConstructorUsedError;

  /// Serializes this OrderHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderHistoryModelCopyWith<OrderHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryModelCopyWith<$Res> {
  factory $OrderHistoryModelCopyWith(
          OrderHistoryModel value, $Res Function(OrderHistoryModel) then) =
      _$OrderHistoryModelCopyWithImpl<$Res, OrderHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'header') HeaderOrderHistoryModel? header,
      @JsonKey(name: 'details') List<DetailOrderHistoryModel>? details,
      @JsonKey(name: 'footer') FooterOrderHistoryModel? footer});

  $HeaderOrderHistoryModelCopyWith<$Res>? get header;
  $FooterOrderHistoryModelCopyWith<$Res>? get footer;
}

/// @nodoc
class _$OrderHistoryModelCopyWithImpl<$Res, $Val extends OrderHistoryModel>
    implements $OrderHistoryModelCopyWith<$Res> {
  _$OrderHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderHistoryModel
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
              as HeaderOrderHistoryModel?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailOrderHistoryModel>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as FooterOrderHistoryModel?,
    ) as $Val);
  }

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeaderOrderHistoryModelCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $HeaderOrderHistoryModelCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FooterOrderHistoryModelCopyWith<$Res>? get footer {
    if (_value.footer == null) {
      return null;
    }

    return $FooterOrderHistoryModelCopyWith<$Res>(_value.footer!, (value) {
      return _then(_value.copyWith(footer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderHistoryModelImplCopyWith<$Res>
    implements $OrderHistoryModelCopyWith<$Res> {
  factory _$$OrderHistoryModelImplCopyWith(_$OrderHistoryModelImpl value,
          $Res Function(_$OrderHistoryModelImpl) then) =
      __$$OrderHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'header') HeaderOrderHistoryModel? header,
      @JsonKey(name: 'details') List<DetailOrderHistoryModel>? details,
      @JsonKey(name: 'footer') FooterOrderHistoryModel? footer});

  @override
  $HeaderOrderHistoryModelCopyWith<$Res>? get header;
  @override
  $FooterOrderHistoryModelCopyWith<$Res>? get footer;
}

/// @nodoc
class __$$OrderHistoryModelImplCopyWithImpl<$Res>
    extends _$OrderHistoryModelCopyWithImpl<$Res, _$OrderHistoryModelImpl>
    implements _$$OrderHistoryModelImplCopyWith<$Res> {
  __$$OrderHistoryModelImplCopyWithImpl(_$OrderHistoryModelImpl _value,
      $Res Function(_$OrderHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? details = freezed,
    Object? footer = freezed,
  }) {
    return _then(_$OrderHistoryModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderOrderHistoryModel?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailOrderHistoryModel>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as FooterOrderHistoryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderHistoryModelImpl implements _OrderHistoryModel {
  const _$OrderHistoryModelImpl(
      {@JsonKey(name: 'header') this.header,
      @JsonKey(name: 'details') final List<DetailOrderHistoryModel>? details,
      @JsonKey(name: 'footer') this.footer})
      : _details = details;

  factory _$OrderHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'header')
  final HeaderOrderHistoryModel? header;
  final List<DetailOrderHistoryModel>? _details;
  @override
  @JsonKey(name: 'details')
  List<DetailOrderHistoryModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'footer')
  final FooterOrderHistoryModel? footer;

  @override
  String toString() {
    return 'OrderHistoryModel(header: $header, details: $details, footer: $footer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryModelImpl &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.footer, footer) || other.footer == footer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, header,
      const DeepCollectionEquality().hash(_details), footer);

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryModelImplCopyWith<_$OrderHistoryModelImpl> get copyWith =>
      __$$OrderHistoryModelImplCopyWithImpl<_$OrderHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _OrderHistoryModel implements OrderHistoryModel {
  const factory _OrderHistoryModel(
      {@JsonKey(name: 'header') final HeaderOrderHistoryModel? header,
      @JsonKey(name: 'details') final List<DetailOrderHistoryModel>? details,
      @JsonKey(name: 'footer')
      final FooterOrderHistoryModel? footer}) = _$OrderHistoryModelImpl;

  factory _OrderHistoryModel.fromJson(Map<String, dynamic> json) =
      _$OrderHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'header')
  HeaderOrderHistoryModel? get header;
  @override
  @JsonKey(name: 'details')
  List<DetailOrderHistoryModel>? get details;
  @override
  @JsonKey(name: 'footer')
  FooterOrderHistoryModel? get footer;

  /// Create a copy of OrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderHistoryModelImplCopyWith<_$OrderHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
