
import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_model_report_sale_by_group_savetime.dart';

part 'branch_model_report_sale_by_group_savetime.freezed.dart';
part 'branch_model_report_sale_by_group_savetime.g.dart';

@freezed
class BranchModelReportSaleByGroupSavetime with _$BranchModelReportSaleByGroupSavetime {
  const factory BranchModelReportSaleByGroupSavetime({
  @JsonKey(name: 'master_branch_name') @Default('') String branchName,
  @JsonKey(name: 'master_branch_id')  @Default('0') String branchId,
  @JsonKey(name: 'list_product') @Default([]) List<ProductModelReportSaleByGroupSavetime> listProduct,
  }) = _BranchModelReportSaleByGroupSavetime;

  factory BranchModelReportSaleByGroupSavetime.fromJson(Map<String, dynamic> json) => _$BranchModelReportSaleByGroupSavetimeFromJson(json);
}
