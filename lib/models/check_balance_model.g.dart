// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_balance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckBalanceModelImpl _$$CheckBalanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckBalanceModelImpl(
      branchImage: json['branch_image'] as String?,
      branchName: json['branch_name'] as String? ?? '',
      memberCode: json['member_code'] as String? ?? '',
      memberName: json['member_name'] as String? ?? '',
      startDate: json['start_date'] as String?,
      expireDate: json['expire_date'] as String?,
      balance: json['balance'] as num? ?? 0,
      todayLimit: json['today_limit'] as num? ?? 0,
      currency: json['currency'] as String? ?? 'บาท',
    );

Map<String, dynamic> _$$CheckBalanceModelImplToJson(
        _$CheckBalanceModelImpl instance) =>
    <String, dynamic>{
      'branch_image': instance.branchImage,
      'branch_name': instance.branchName,
      'member_code': instance.memberCode,
      'member_name': instance.memberName,
      'start_date': instance.startDate,
      'expire_date': instance.expireDate,
      'balance': instance.balance,
      'today_limit': instance.todayLimit,
      'currency': instance.currency,
    };
