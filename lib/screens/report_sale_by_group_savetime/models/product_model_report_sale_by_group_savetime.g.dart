// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_report_sale_by_group_savetime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelReportSaleByGroupSavetimeImpl
    _$$ProductModelReportSaleByGroupSavetimeImplFromJson(
            Map<String, dynamic> json) =>
        _$ProductModelReportSaleByGroupSavetimeImpl(
          productGroupName: json['master_product_group_name'] as String? ?? '',
          productName: json['master_product_name'] as String? ?? '',
          saledtQty: json['saledt_qty'] as String? ?? '0',
          saledtSaleprice: json['saledt_saleprice'] as String? ?? '0',
          productCost: json['master_product_cost'] as String? ?? '0',
          saledtNetamnt: json['saledt_netamnt'] as String? ?? '0',
          saledtCost: json['saledt_cost'] as String? ?? '0',
          branchId: json['master_branch_id'] as String? ?? '0',
          productGroupId: json['master_product_group_id'] as String? ?? '0',
          productId: json['master_product_id'] as String? ?? '0',
        );

Map<String, dynamic> _$$ProductModelReportSaleByGroupSavetimeImplToJson(
        _$ProductModelReportSaleByGroupSavetimeImpl instance) =>
    <String, dynamic>{
      'master_product_group_name': instance.productGroupName,
      'master_product_name': instance.productName,
      'saledt_qty': instance.saledtQty,
      'saledt_saleprice': instance.saledtSaleprice,
      'master_product_cost': instance.productCost,
      'saledt_netamnt': instance.saledtNetamnt,
      'saledt_cost': instance.saledtCost,
      'master_branch_id': instance.branchId,
      'master_product_group_id': instance.productGroupId,
      'master_product_id': instance.productId,
    };
