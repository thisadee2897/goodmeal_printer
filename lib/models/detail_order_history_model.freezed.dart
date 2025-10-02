// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_order_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailOrderHistoryModel _$DetailOrderHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _DetailOrderHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$DetailOrderHistoryModel {
  @JsonKey(name: 'list_no')
  num? get listNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_name')
  String? get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  num? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  num? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  num? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'save_time')
  String? get saveTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'savename')
  String? get saveName => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancel_time')
  String? get cancelTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelname')
  String? get cancelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancel_remark')
  String? get cancelRemark => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderdt_type')
  num? get orderdtType => throw _privateConstructorUsedError;

  /// Serializes this DetailOrderHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailOrderHistoryModelCopyWith<DetailOrderHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailOrderHistoryModelCopyWith<$Res> {
  factory $DetailOrderHistoryModelCopyWith(DetailOrderHistoryModel value,
          $Res Function(DetailOrderHistoryModel) then) =
      _$DetailOrderHistoryModelCopyWithImpl<$Res, DetailOrderHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'list_no') num? listNo,
      @JsonKey(name: 'item_name') String? itemName,
      @JsonKey(name: 'unit_price') num? unitPrice,
      @JsonKey(name: 'quantity') num? quantity,
      @JsonKey(name: 'amount') num? amount,
      @JsonKey(name: 'save_time') String? saveTime,
      @JsonKey(name: 'savename') String? saveName,
      @JsonKey(name: 'cancel_time') String? cancelTime,
      @JsonKey(name: 'cancelname') String? cancelName,
      @JsonKey(name: 'cancel_remark') String? cancelRemark,
      @JsonKey(name: 'orderdt_type') num? orderdtType});
}

/// @nodoc
class _$DetailOrderHistoryModelCopyWithImpl<$Res,
        $Val extends DetailOrderHistoryModel>
    implements $DetailOrderHistoryModelCopyWith<$Res> {
  _$DetailOrderHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listNo = freezed,
    Object? itemName = freezed,
    Object? unitPrice = freezed,
    Object? quantity = freezed,
    Object? amount = freezed,
    Object? saveTime = freezed,
    Object? saveName = freezed,
    Object? cancelTime = freezed,
    Object? cancelName = freezed,
    Object? cancelRemark = freezed,
    Object? orderdtType = freezed,
  }) {
    return _then(_value.copyWith(
      listNo: freezed == listNo
          ? _value.listNo
          : listNo // ignore: cast_nullable_to_non_nullable
              as num?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      saveTime: freezed == saveTime
          ? _value.saveTime
          : saveTime // ignore: cast_nullable_to_non_nullable
              as String?,
      saveName: freezed == saveName
          ? _value.saveName
          : saveName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelTime: freezed == cancelTime
          ? _value.cancelTime
          : cancelTime // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelName: freezed == cancelName
          ? _value.cancelName
          : cancelName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelRemark: freezed == cancelRemark
          ? _value.cancelRemark
          : cancelRemark // ignore: cast_nullable_to_non_nullable
              as String?,
      orderdtType: freezed == orderdtType
          ? _value.orderdtType
          : orderdtType // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailOrderHistoryModelImplCopyWith<$Res>
    implements $DetailOrderHistoryModelCopyWith<$Res> {
  factory _$$DetailOrderHistoryModelImplCopyWith(
          _$DetailOrderHistoryModelImpl value,
          $Res Function(_$DetailOrderHistoryModelImpl) then) =
      __$$DetailOrderHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'list_no') num? listNo,
      @JsonKey(name: 'item_name') String? itemName,
      @JsonKey(name: 'unit_price') num? unitPrice,
      @JsonKey(name: 'quantity') num? quantity,
      @JsonKey(name: 'amount') num? amount,
      @JsonKey(name: 'save_time') String? saveTime,
      @JsonKey(name: 'savename') String? saveName,
      @JsonKey(name: 'cancel_time') String? cancelTime,
      @JsonKey(name: 'cancelname') String? cancelName,
      @JsonKey(name: 'cancel_remark') String? cancelRemark,
      @JsonKey(name: 'orderdt_type') num? orderdtType});
}

/// @nodoc
class __$$DetailOrderHistoryModelImplCopyWithImpl<$Res>
    extends _$DetailOrderHistoryModelCopyWithImpl<$Res,
        _$DetailOrderHistoryModelImpl>
    implements _$$DetailOrderHistoryModelImplCopyWith<$Res> {
  __$$DetailOrderHistoryModelImplCopyWithImpl(
      _$DetailOrderHistoryModelImpl _value,
      $Res Function(_$DetailOrderHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listNo = freezed,
    Object? itemName = freezed,
    Object? unitPrice = freezed,
    Object? quantity = freezed,
    Object? amount = freezed,
    Object? saveTime = freezed,
    Object? saveName = freezed,
    Object? cancelTime = freezed,
    Object? cancelName = freezed,
    Object? cancelRemark = freezed,
    Object? orderdtType = freezed,
  }) {
    return _then(_$DetailOrderHistoryModelImpl(
      listNo: freezed == listNo
          ? _value.listNo
          : listNo // ignore: cast_nullable_to_non_nullable
              as num?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      saveTime: freezed == saveTime
          ? _value.saveTime
          : saveTime // ignore: cast_nullable_to_non_nullable
              as String?,
      saveName: freezed == saveName
          ? _value.saveName
          : saveName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelTime: freezed == cancelTime
          ? _value.cancelTime
          : cancelTime // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelName: freezed == cancelName
          ? _value.cancelName
          : cancelName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelRemark: freezed == cancelRemark
          ? _value.cancelRemark
          : cancelRemark // ignore: cast_nullable_to_non_nullable
              as String?,
      orderdtType: freezed == orderdtType
          ? _value.orderdtType
          : orderdtType // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailOrderHistoryModelImpl implements _DetailOrderHistoryModel {
  const _$DetailOrderHistoryModelImpl(
      {@JsonKey(name: 'list_no') this.listNo,
      @JsonKey(name: 'item_name') this.itemName,
      @JsonKey(name: 'unit_price') this.unitPrice,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'save_time') this.saveTime,
      @JsonKey(name: 'savename') this.saveName,
      @JsonKey(name: 'cancel_time') this.cancelTime,
      @JsonKey(name: 'cancelname') this.cancelName,
      @JsonKey(name: 'cancel_remark') this.cancelRemark,
      @JsonKey(name: 'orderdt_type') this.orderdtType});

  factory _$DetailOrderHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailOrderHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'list_no')
  final num? listNo;
  @override
  @JsonKey(name: 'item_name')
  final String? itemName;
  @override
  @JsonKey(name: 'unit_price')
  final num? unitPrice;
  @override
  @JsonKey(name: 'quantity')
  final num? quantity;
  @override
  @JsonKey(name: 'amount')
  final num? amount;
  @override
  @JsonKey(name: 'save_time')
  final String? saveTime;
  @override
  @JsonKey(name: 'savename')
  final String? saveName;
  @override
  @JsonKey(name: 'cancel_time')
  final String? cancelTime;
  @override
  @JsonKey(name: 'cancelname')
  final String? cancelName;
  @override
  @JsonKey(name: 'cancel_remark')
  final String? cancelRemark;
  @override
  @JsonKey(name: 'orderdt_type')
  final num? orderdtType;

  @override
  String toString() {
    return 'DetailOrderHistoryModel(listNo: $listNo, itemName: $itemName, unitPrice: $unitPrice, quantity: $quantity, amount: $amount, saveTime: $saveTime, saveName: $saveName, cancelTime: $cancelTime, cancelName: $cancelName, cancelRemark: $cancelRemark, orderdtType: $orderdtType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailOrderHistoryModelImpl &&
            (identical(other.listNo, listNo) || other.listNo == listNo) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.saveTime, saveTime) ||
                other.saveTime == saveTime) &&
            (identical(other.saveName, saveName) ||
                other.saveName == saveName) &&
            (identical(other.cancelTime, cancelTime) ||
                other.cancelTime == cancelTime) &&
            (identical(other.cancelName, cancelName) ||
                other.cancelName == cancelName) &&
            (identical(other.cancelRemark, cancelRemark) ||
                other.cancelRemark == cancelRemark) &&
            (identical(other.orderdtType, orderdtType) ||
                other.orderdtType == orderdtType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      listNo,
      itemName,
      unitPrice,
      quantity,
      amount,
      saveTime,
      saveName,
      cancelTime,
      cancelName,
      cancelRemark,
      orderdtType);

  /// Create a copy of DetailOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailOrderHistoryModelImplCopyWith<_$DetailOrderHistoryModelImpl>
      get copyWith => __$$DetailOrderHistoryModelImplCopyWithImpl<
          _$DetailOrderHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailOrderHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _DetailOrderHistoryModel implements DetailOrderHistoryModel {
  const factory _DetailOrderHistoryModel(
          {@JsonKey(name: 'list_no') final num? listNo,
          @JsonKey(name: 'item_name') final String? itemName,
          @JsonKey(name: 'unit_price') final num? unitPrice,
          @JsonKey(name: 'quantity') final num? quantity,
          @JsonKey(name: 'amount') final num? amount,
          @JsonKey(name: 'save_time') final String? saveTime,
          @JsonKey(name: 'savename') final String? saveName,
          @JsonKey(name: 'cancel_time') final String? cancelTime,
          @JsonKey(name: 'cancelname') final String? cancelName,
          @JsonKey(name: 'cancel_remark') final String? cancelRemark,
          @JsonKey(name: 'orderdt_type') final num? orderdtType}) =
      _$DetailOrderHistoryModelImpl;

  factory _DetailOrderHistoryModel.fromJson(Map<String, dynamic> json) =
      _$DetailOrderHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'list_no')
  num? get listNo;
  @override
  @JsonKey(name: 'item_name')
  String? get itemName;
  @override
  @JsonKey(name: 'unit_price')
  num? get unitPrice;
  @override
  @JsonKey(name: 'quantity')
  num? get quantity;
  @override
  @JsonKey(name: 'amount')
  num? get amount;
  @override
  @JsonKey(name: 'save_time')
  String? get saveTime;
  @override
  @JsonKey(name: 'savename')
  String? get saveName;
  @override
  @JsonKey(name: 'cancel_time')
  String? get cancelTime;
  @override
  @JsonKey(name: 'cancelname')
  String? get cancelName;
  @override
  @JsonKey(name: 'cancel_remark')
  String? get cancelRemark;
  @override
  @JsonKey(name: 'orderdt_type')
  num? get orderdtType;

  /// Create a copy of DetailOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailOrderHistoryModelImplCopyWith<_$DetailOrderHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
