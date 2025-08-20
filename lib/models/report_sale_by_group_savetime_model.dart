
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_sale_by_group_savetime_model.freezed.dart';
part 'report_sale_by_group_savetime_model.g.dart';

@freezed
class ReportSaleByGroupSavetimeModel with _$ReportSaleByGroupSavetimeModel {
  const factory ReportSaleByGroupSavetimeModel({
  @JsonKey(name: 'master_branch_name') String? branchName,
  @JsonKey(name: 'master_product_group_name') String? productGroupName,
  @JsonKey(name: 'master_product_name') String? productName,
  @JsonKey(name: 'saledt_qty') String? saledtQty,
  @JsonKey(name: 'saledt_saleprice') String? saledtSaleprice,
  @JsonKey(name: 'master_product_cost') String? productCost,
  @JsonKey(name: 'saledt_netamnt') String? saledtNetamnt,
  @JsonKey(name: 'saledt_cost') String? saledtCost,
  @JsonKey(name: 'master_branch_id') String? branchId,
  @JsonKey(name: 'master_product_group_id') String? productGroupId,
  @JsonKey(name: 'master_product_id') String? productId,
  }) = _ReportSaleByGroupSavetimeModel;

  factory ReportSaleByGroupSavetimeModel.fromJson(Map<String, dynamic> json) => _$ReportSaleByGroupSavetimeModelFromJson(json);
}
