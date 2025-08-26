import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_balance_model.freezed.dart';
part 'check_balance_model.g.dart';

@freezed
class CheckBalanceModel with _$CheckBalanceModel {
  const factory CheckBalanceModel({
    @JsonKey(name: 'branch_image') String? branchImage,
    @JsonKey(name: 'branch_name') @Default('')String branchName,
    @JsonKey(name: 'member_code') @Default('')String memberCode,
    @JsonKey(name: 'member_name') @Default('')String memberName,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'expire_date') String? expireDate,
    @JsonKey(name: 'balance') @Default(0) num balance,
    @JsonKey(name: 'today_limit') @Default(0) num todayLimit,
    @JsonKey(name: 'currency') @Default('บาท') String currency,
  }) = _CheckBalanceModel;

  factory CheckBalanceModel.fromJson(Map<String, dynamic> json) => _$CheckBalanceModelFromJson(json);
}
