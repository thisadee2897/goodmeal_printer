// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckBalanceModel _$CheckBalanceModelFromJson(Map<String, dynamic> json) {
  return _CheckBalanceModel.fromJson(json);
}

/// @nodoc
mixin _$CheckBalanceModel {
  @JsonKey(name: 'branch_image')
  String? get branchImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_name')
  String get branchName => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_code')
  String get memberCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_name')
  String get memberName => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire_date')
  String? get expireDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  num get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'today_limit')
  num get todayLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this CheckBalanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckBalanceModelCopyWith<CheckBalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckBalanceModelCopyWith<$Res> {
  factory $CheckBalanceModelCopyWith(
          CheckBalanceModel value, $Res Function(CheckBalanceModel) then) =
      _$CheckBalanceModelCopyWithImpl<$Res, CheckBalanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'branch_image') String? branchImage,
      @JsonKey(name: 'branch_name') String branchName,
      @JsonKey(name: 'member_code') String memberCode,
      @JsonKey(name: 'member_name') String memberName,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'expire_date') String? expireDate,
      @JsonKey(name: 'balance') num balance,
      @JsonKey(name: 'today_limit') num todayLimit,
      @JsonKey(name: 'currency') String currency});
}

/// @nodoc
class _$CheckBalanceModelCopyWithImpl<$Res, $Val extends CheckBalanceModel>
    implements $CheckBalanceModelCopyWith<$Res> {
  _$CheckBalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchImage = freezed,
    Object? branchName = null,
    Object? memberCode = null,
    Object? memberName = null,
    Object? startDate = freezed,
    Object? expireDate = freezed,
    Object? balance = null,
    Object? todayLimit = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      branchImage: freezed == branchImage
          ? _value.branchImage
          : branchImage // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
      memberCode: null == memberCode
          ? _value.memberCode
          : memberCode // ignore: cast_nullable_to_non_nullable
              as String,
      memberName: null == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
      todayLimit: null == todayLimit
          ? _value.todayLimit
          : todayLimit // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckBalanceModelImplCopyWith<$Res>
    implements $CheckBalanceModelCopyWith<$Res> {
  factory _$$CheckBalanceModelImplCopyWith(_$CheckBalanceModelImpl value,
          $Res Function(_$CheckBalanceModelImpl) then) =
      __$$CheckBalanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'branch_image') String? branchImage,
      @JsonKey(name: 'branch_name') String branchName,
      @JsonKey(name: 'member_code') String memberCode,
      @JsonKey(name: 'member_name') String memberName,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'expire_date') String? expireDate,
      @JsonKey(name: 'balance') num balance,
      @JsonKey(name: 'today_limit') num todayLimit,
      @JsonKey(name: 'currency') String currency});
}

/// @nodoc
class __$$CheckBalanceModelImplCopyWithImpl<$Res>
    extends _$CheckBalanceModelCopyWithImpl<$Res, _$CheckBalanceModelImpl>
    implements _$$CheckBalanceModelImplCopyWith<$Res> {
  __$$CheckBalanceModelImplCopyWithImpl(_$CheckBalanceModelImpl _value,
      $Res Function(_$CheckBalanceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchImage = freezed,
    Object? branchName = null,
    Object? memberCode = null,
    Object? memberName = null,
    Object? startDate = freezed,
    Object? expireDate = freezed,
    Object? balance = null,
    Object? todayLimit = null,
    Object? currency = null,
  }) {
    return _then(_$CheckBalanceModelImpl(
      branchImage: freezed == branchImage
          ? _value.branchImage
          : branchImage // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
      memberCode: null == memberCode
          ? _value.memberCode
          : memberCode // ignore: cast_nullable_to_non_nullable
              as String,
      memberName: null == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
      todayLimit: null == todayLimit
          ? _value.todayLimit
          : todayLimit // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckBalanceModelImpl implements _CheckBalanceModel {
  const _$CheckBalanceModelImpl(
      {@JsonKey(name: 'branch_image') this.branchImage,
      @JsonKey(name: 'branch_name') this.branchName = '',
      @JsonKey(name: 'member_code') this.memberCode = '',
      @JsonKey(name: 'member_name') this.memberName = '',
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'expire_date') this.expireDate,
      @JsonKey(name: 'balance') this.balance = 0,
      @JsonKey(name: 'today_limit') this.todayLimit = 0,
      @JsonKey(name: 'currency') this.currency = 'บาท'});

  factory _$CheckBalanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckBalanceModelImplFromJson(json);

  @override
  @JsonKey(name: 'branch_image')
  final String? branchImage;
  @override
  @JsonKey(name: 'branch_name')
  final String branchName;
  @override
  @JsonKey(name: 'member_code')
  final String memberCode;
  @override
  @JsonKey(name: 'member_name')
  final String memberName;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'expire_date')
  final String? expireDate;
  @override
  @JsonKey(name: 'balance')
  final num balance;
  @override
  @JsonKey(name: 'today_limit')
  final num todayLimit;
  @override
  @JsonKey(name: 'currency')
  final String currency;

  @override
  String toString() {
    return 'CheckBalanceModel(branchImage: $branchImage, branchName: $branchName, memberCode: $memberCode, memberName: $memberName, startDate: $startDate, expireDate: $expireDate, balance: $balance, todayLimit: $todayLimit, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckBalanceModelImpl &&
            (identical(other.branchImage, branchImage) ||
                other.branchImage == branchImage) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(other.memberCode, memberCode) ||
                other.memberCode == memberCode) &&
            (identical(other.memberName, memberName) ||
                other.memberName == memberName) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.todayLimit, todayLimit) ||
                other.todayLimit == todayLimit) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      branchImage,
      branchName,
      memberCode,
      memberName,
      startDate,
      expireDate,
      balance,
      todayLimit,
      currency);

  /// Create a copy of CheckBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckBalanceModelImplCopyWith<_$CheckBalanceModelImpl> get copyWith =>
      __$$CheckBalanceModelImplCopyWithImpl<_$CheckBalanceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckBalanceModelImplToJson(
      this,
    );
  }
}

abstract class _CheckBalanceModel implements CheckBalanceModel {
  const factory _CheckBalanceModel(
          {@JsonKey(name: 'branch_image') final String? branchImage,
          @JsonKey(name: 'branch_name') final String branchName,
          @JsonKey(name: 'member_code') final String memberCode,
          @JsonKey(name: 'member_name') final String memberName,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'expire_date') final String? expireDate,
          @JsonKey(name: 'balance') final num balance,
          @JsonKey(name: 'today_limit') final num todayLimit,
          @JsonKey(name: 'currency') final String currency}) =
      _$CheckBalanceModelImpl;

  factory _CheckBalanceModel.fromJson(Map<String, dynamic> json) =
      _$CheckBalanceModelImpl.fromJson;

  @override
  @JsonKey(name: 'branch_image')
  String? get branchImage;
  @override
  @JsonKey(name: 'branch_name')
  String get branchName;
  @override
  @JsonKey(name: 'member_code')
  String get memberCode;
  @override
  @JsonKey(name: 'member_name')
  String get memberName;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'expire_date')
  String? get expireDate;
  @override
  @JsonKey(name: 'balance')
  num get balance;
  @override
  @JsonKey(name: 'today_limit')
  num get todayLimit;
  @override
  @JsonKey(name: 'currency')
  String get currency;

  /// Create a copy of CheckBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckBalanceModelImplCopyWith<_$CheckBalanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
