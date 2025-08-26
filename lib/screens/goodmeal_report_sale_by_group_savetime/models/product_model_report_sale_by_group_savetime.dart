import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model_report_sale_by_group_savetime.freezed.dart';
part 'product_model_report_sale_by_group_savetime.g.dart';

@freezed
class ProductModelReportSaleByGroupSavetime with _$ProductModelReportSaleByGroupSavetime {
  const factory ProductModelReportSaleByGroupSavetime({
    @JsonKey(name: 'master_product_group_name') @Default('') String productGroupName,
    @JsonKey(name: 'master_product_name') @Default('') String productName,
    @JsonKey(name: 'saledt_qty') @Default('0') String saledtQty,
    @JsonKey(name: 'saledt_saleprice') @Default('0') String saledtSaleprice,
    @JsonKey(name: 'master_product_cost') @Default('0') String productCost,
    @JsonKey(name: 'saledt_netamnt') @Default('0') String saledtNetamnt,
    @JsonKey(name: 'saledt_cost') @Default('0') String saledtCost,
    @JsonKey(name: 'master_branch_id') @Default('0') String branchId,
    @JsonKey(name: 'master_product_group_id') @Default('0') String productGroupId,
    @JsonKey(name: 'master_product_id') @Default('0') String productId,
  }) = _ProductModelReportSaleByGroupSavetime;

  factory ProductModelReportSaleByGroupSavetime.fromJson(Map<String, dynamic> json) => _$ProductModelReportSaleByGroupSavetimeFromJson(json);
}
