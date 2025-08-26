// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model_report_sale_by_group_savetime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchModelReportSaleByGroupSavetimeImpl
    _$$BranchModelReportSaleByGroupSavetimeImplFromJson(
            Map<String, dynamic> json) =>
        _$BranchModelReportSaleByGroupSavetimeImpl(
          branchName: json['master_branch_name'] as String? ?? '',
          branchId: json['master_branch_id'] as String? ?? '0',
          listProduct: (json['list_product'] as List<dynamic>?)
                  ?.map((e) => ProductModelReportSaleByGroupSavetime.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$BranchModelReportSaleByGroupSavetimeImplToJson(
        _$BranchModelReportSaleByGroupSavetimeImpl instance) =>
    <String, dynamic>{
      'master_branch_name': instance.branchName,
      'master_branch_id': instance.branchId,
      'list_product': instance.listProduct,
    };
