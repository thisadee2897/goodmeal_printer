// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_dt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaleDTModel _$SaleDTModelFromJson(Map<String, dynamic> json) {
  return _SaleDTModel.fromJson(json);
}

/// @nodoc
mixin _$SaleDTModel {
  @JsonKey(name: 'saledt_listno')
  num? get saledtListno => throw _privateConstructorUsedError;
  @JsonKey(name: 'saledt_master_product_billname')
  String? get saledtMasterProductBillname => throw _privateConstructorUsedError;
  @JsonKey(name: 'saledt_saleprice')
  num? get saledtSaleprice => throw _privateConstructorUsedError;
  @JsonKey(name: 'saledt_qty')
  num? get saledtQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'saledt_netamnt')
  num? get saledtNetamnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderdt_status_id')
  int? get orderdtStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderdt_savetime')
  String? get orderdtSavetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'savename')
  String? get savename => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelname')
  String? get cancelname => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderdt_cancel_remark')
  String? get orderdtCancelRemark => throw _privateConstructorUsedError;

  /// Serializes this SaleDTModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaleDTModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaleDTModelCopyWith<SaleDTModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleDTModelCopyWith<$Res> {
  factory $SaleDTModelCopyWith(
          SaleDTModel value, $Res Function(SaleDTModel) then) =
      _$SaleDTModelCopyWithImpl<$Res, SaleDTModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'saledt_listno') num? saledtListno,
      @JsonKey(name: 'saledt_master_product_billname')
      String? saledtMasterProductBillname,
      @JsonKey(name: 'saledt_saleprice') num? saledtSaleprice,
      @JsonKey(name: 'saledt_qty') num? saledtQty,
      @JsonKey(name: 'saledt_netamnt') num? saledtNetamnt,
      @JsonKey(name: 'orderdt_status_id') int? orderdtStatusId,
      @JsonKey(name: 'orderdt_savetime') String? orderdtSavetime,
      @JsonKey(name: 'savename') String? savename,
      @JsonKey(name: 'cancelname') String? cancelname,
      @JsonKey(name: 'orderdt_cancel_remark') String? orderdtCancelRemark});
}

/// @nodoc
class _$SaleDTModelCopyWithImpl<$Res, $Val extends SaleDTModel>
    implements $SaleDTModelCopyWith<$Res> {
  _$SaleDTModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaleDTModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saledtListno = freezed,
    Object? saledtMasterProductBillname = freezed,
    Object? saledtSaleprice = freezed,
    Object? saledtQty = freezed,
    Object? saledtNetamnt = freezed,
    Object? orderdtStatusId = freezed,
    Object? orderdtSavetime = freezed,
    Object? savename = freezed,
    Object? cancelname = freezed,
    Object? orderdtCancelRemark = freezed,
  }) {
    return _then(_value.copyWith(
      saledtListno: freezed == saledtListno
          ? _value.saledtListno
          : saledtListno // ignore: cast_nullable_to_non_nullable
              as num?,
      saledtMasterProductBillname: freezed == saledtMasterProductBillname
          ? _value.saledtMasterProductBillname
          : saledtMasterProductBillname // ignore: cast_nullable_to_non_nullable
              as String?,
      saledtSaleprice: freezed == saledtSaleprice
          ? _value.saledtSaleprice
          : saledtSaleprice // ignore: cast_nullable_to_non_nullable
              as num?,
      saledtQty: freezed == saledtQty
          ? _value.saledtQty
          : saledtQty // ignore: cast_nullable_to_non_nullable
              as num?,
      saledtNetamnt: freezed == saledtNetamnt
          ? _value.saledtNetamnt
          : saledtNetamnt // ignore: cast_nullable_to_non_nullable
              as num?,
      orderdtStatusId: freezed == orderdtStatusId
          ? _value.orderdtStatusId
          : orderdtStatusId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdtSavetime: freezed == orderdtSavetime
          ? _value.orderdtSavetime
          : orderdtSavetime // ignore: cast_nullable_to_non_nullable
              as String?,
      savename: freezed == savename
          ? _value.savename
          : savename // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelname: freezed == cancelname
          ? _value.cancelname
          : cancelname // ignore: cast_nullable_to_non_nullable
              as String?,
      orderdtCancelRemark: freezed == orderdtCancelRemark
          ? _value.orderdtCancelRemark
          : orderdtCancelRemark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleDTModelImplCopyWith<$Res>
    implements $SaleDTModelCopyWith<$Res> {
  factory _$$SaleDTModelImplCopyWith(
          _$SaleDTModelImpl value, $Res Function(_$SaleDTModelImpl) then) =
      __$$SaleDTModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'saledt_listno') num? saledtListno,
      @JsonKey(name: 'saledt_master_product_billname')
      String? saledtMasterProductBillname,
      @JsonKey(name: 'saledt_saleprice') num? saledtSaleprice,
      @JsonKey(name: 'saledt_qty') num? saledtQty,
      @JsonKey(name: 'saledt_netamnt') num? saledtNetamnt,
      @JsonKey(name: 'orderdt_status_id') int? orderdtStatusId,
      @JsonKey(name: 'orderdt_savetime') String? orderdtSavetime,
      @JsonKey(name: 'savename') String? savename,
      @JsonKey(name: 'cancelname') String? cancelname,
      @JsonKey(name: 'orderdt_cancel_remark') String? orderdtCancelRemark});
}

/// @nodoc
class __$$SaleDTModelImplCopyWithImpl<$Res>
    extends _$SaleDTModelCopyWithImpl<$Res, _$SaleDTModelImpl>
    implements _$$SaleDTModelImplCopyWith<$Res> {
  __$$SaleDTModelImplCopyWithImpl(
      _$SaleDTModelImpl _value, $Res Function(_$SaleDTModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaleDTModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saledtListno = freezed,
    Object? saledtMasterProductBillname = freezed,
    Object? saledtSaleprice = freezed,
    Object? saledtQty = freezed,
    Object? saledtNetamnt = freezed,
    Object? orderdtStatusId = freezed,
    Object? orderdtSavetime = freezed,
    Object? savename = freezed,
    Object? cancelname = freezed,
    Object? orderdtCancelRemark = freezed,
  }) {
    return _then(_$SaleDTModelImpl(
      saledtListno: freezed == saledtListno
          ? _value.saledtListno
          : saledtListno // ignore: cast_nullable_to_non_nullable
              as num?,
      saledtMasterProductBillname: freezed == saledtMasterProductBillname
          ? _value.saledtMasterProductBillname
          : saledtMasterProductBillname // ignore: cast_nullable_to_non_nullable
              as String?,
      saledtSaleprice: freezed == saledtSaleprice
          ? _value.saledtSaleprice
          : saledtSaleprice // ignore: cast_nullable_to_non_nullable
              as num?,
      saledtQty: freezed == saledtQty
          ? _value.saledtQty
          : saledtQty // ignore: cast_nullable_to_non_nullable
              as num?,
      saledtNetamnt: freezed == saledtNetamnt
          ? _value.saledtNetamnt
          : saledtNetamnt // ignore: cast_nullable_to_non_nullable
              as num?,
      orderdtStatusId: freezed == orderdtStatusId
          ? _value.orderdtStatusId
          : orderdtStatusId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdtSavetime: freezed == orderdtSavetime
          ? _value.orderdtSavetime
          : orderdtSavetime // ignore: cast_nullable_to_non_nullable
              as String?,
      savename: freezed == savename
          ? _value.savename
          : savename // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelname: freezed == cancelname
          ? _value.cancelname
          : cancelname // ignore: cast_nullable_to_non_nullable
              as String?,
      orderdtCancelRemark: freezed == orderdtCancelRemark
          ? _value.orderdtCancelRemark
          : orderdtCancelRemark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleDTModelImpl implements _SaleDTModel {
  const _$SaleDTModelImpl(
      {@JsonKey(name: 'saledt_listno') this.saledtListno,
      @JsonKey(name: 'saledt_master_product_billname')
      this.saledtMasterProductBillname,
      @JsonKey(name: 'saledt_saleprice') this.saledtSaleprice,
      @JsonKey(name: 'saledt_qty') this.saledtQty,
      @JsonKey(name: 'saledt_netamnt') this.saledtNetamnt,
      @JsonKey(name: 'orderdt_status_id') this.orderdtStatusId,
      @JsonKey(name: 'orderdt_savetime') this.orderdtSavetime,
      @JsonKey(name: 'savename') this.savename,
      @JsonKey(name: 'cancelname') this.cancelname,
      @JsonKey(name: 'orderdt_cancel_remark') this.orderdtCancelRemark});

  factory _$SaleDTModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleDTModelImplFromJson(json);

  @override
  @JsonKey(name: 'saledt_listno')
  final num? saledtListno;
  @override
  @JsonKey(name: 'saledt_master_product_billname')
  final String? saledtMasterProductBillname;
  @override
  @JsonKey(name: 'saledt_saleprice')
  final num? saledtSaleprice;
  @override
  @JsonKey(name: 'saledt_qty')
  final num? saledtQty;
  @override
  @JsonKey(name: 'saledt_netamnt')
  final num? saledtNetamnt;
  @override
  @JsonKey(name: 'orderdt_status_id')
  final int? orderdtStatusId;
  @override
  @JsonKey(name: 'orderdt_savetime')
  final String? orderdtSavetime;
  @override
  @JsonKey(name: 'savename')
  final String? savename;
  @override
  @JsonKey(name: 'cancelname')
  final String? cancelname;
  @override
  @JsonKey(name: 'orderdt_cancel_remark')
  final String? orderdtCancelRemark;

  @override
  String toString() {
    return 'SaleDTModel(saledtListno: $saledtListno, saledtMasterProductBillname: $saledtMasterProductBillname, saledtSaleprice: $saledtSaleprice, saledtQty: $saledtQty, saledtNetamnt: $saledtNetamnt, orderdtStatusId: $orderdtStatusId, orderdtSavetime: $orderdtSavetime, savename: $savename, cancelname: $cancelname, orderdtCancelRemark: $orderdtCancelRemark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleDTModelImpl &&
            (identical(other.saledtListno, saledtListno) ||
                other.saledtListno == saledtListno) &&
            (identical(other.saledtMasterProductBillname,
                    saledtMasterProductBillname) ||
                other.saledtMasterProductBillname ==
                    saledtMasterProductBillname) &&
            (identical(other.saledtSaleprice, saledtSaleprice) ||
                other.saledtSaleprice == saledtSaleprice) &&
            (identical(other.saledtQty, saledtQty) ||
                other.saledtQty == saledtQty) &&
            (identical(other.saledtNetamnt, saledtNetamnt) ||
                other.saledtNetamnt == saledtNetamnt) &&
            (identical(other.orderdtStatusId, orderdtStatusId) ||
                other.orderdtStatusId == orderdtStatusId) &&
            (identical(other.orderdtSavetime, orderdtSavetime) ||
                other.orderdtSavetime == orderdtSavetime) &&
            (identical(other.savename, savename) ||
                other.savename == savename) &&
            (identical(other.cancelname, cancelname) ||
                other.cancelname == cancelname) &&
            (identical(other.orderdtCancelRemark, orderdtCancelRemark) ||
                other.orderdtCancelRemark == orderdtCancelRemark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      saledtListno,
      saledtMasterProductBillname,
      saledtSaleprice,
      saledtQty,
      saledtNetamnt,
      orderdtStatusId,
      orderdtSavetime,
      savename,
      cancelname,
      orderdtCancelRemark);

  /// Create a copy of SaleDTModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleDTModelImplCopyWith<_$SaleDTModelImpl> get copyWith =>
      __$$SaleDTModelImplCopyWithImpl<_$SaleDTModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleDTModelImplToJson(
      this,
    );
  }
}

abstract class _SaleDTModel implements SaleDTModel {
  const factory _SaleDTModel(
      {@JsonKey(name: 'saledt_listno') final num? saledtListno,
      @JsonKey(name: 'saledt_master_product_billname')
      final String? saledtMasterProductBillname,
      @JsonKey(name: 'saledt_saleprice') final num? saledtSaleprice,
      @JsonKey(name: 'saledt_qty') final num? saledtQty,
      @JsonKey(name: 'saledt_netamnt') final num? saledtNetamnt,
      @JsonKey(name: 'orderdt_status_id') final int? orderdtStatusId,
      @JsonKey(name: 'orderdt_savetime') final String? orderdtSavetime,
      @JsonKey(name: 'savename') final String? savename,
      @JsonKey(name: 'cancelname') final String? cancelname,
      @JsonKey(name: 'orderdt_cancel_remark')
      final String? orderdtCancelRemark}) = _$SaleDTModelImpl;

  factory _SaleDTModel.fromJson(Map<String, dynamic> json) =
      _$SaleDTModelImpl.fromJson;

  @override
  @JsonKey(name: 'saledt_listno')
  num? get saledtListno;
  @override
  @JsonKey(name: 'saledt_master_product_billname')
  String? get saledtMasterProductBillname;
  @override
  @JsonKey(name: 'saledt_saleprice')
  num? get saledtSaleprice;
  @override
  @JsonKey(name: 'saledt_qty')
  num? get saledtQty;
  @override
  @JsonKey(name: 'saledt_netamnt')
  num? get saledtNetamnt;
  @override
  @JsonKey(name: 'orderdt_status_id')
  int? get orderdtStatusId;
  @override
  @JsonKey(name: 'orderdt_savetime')
  String? get orderdtSavetime;
  @override
  @JsonKey(name: 'savename')
  String? get savename;
  @override
  @JsonKey(name: 'cancelname')
  String? get cancelname;
  @override
  @JsonKey(name: 'orderdt_cancel_remark')
  String? get orderdtCancelRemark;

  /// Create a copy of SaleDTModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaleDTModelImplCopyWith<_$SaleDTModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
