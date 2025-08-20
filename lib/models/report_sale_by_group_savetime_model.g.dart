// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_sale_by_group_savetime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportSaleByGroupSavetimeModelImpl
    _$$ReportSaleByGroupSavetimeModelImplFromJson(Map<String, dynamic> json) =>
        _$ReportSaleByGroupSavetimeModelImpl(
          branchName: json['master_branch_name'] as String?,
          productGroupName: json['master_product_group_name'] as String?,
          productName: json['master_product_name'] as String?,
          saledtQty: json['saledt_qty'] as String?,
          saledtSaleprice: json['saledt_saleprice'] as String?,
          productCost: json['master_product_cost'] as String?,
          saledtNetamnt: json['saledt_netamnt'] as String?,
          saledtCost: json['saledt_cost'] as String?,
          branchId: json['master_branch_id'] as String?,
          productGroupId: json['master_product_group_id'] as String?,
          productId: json['master_product_id'] as String?,
        );

Map<String, dynamic> _$$ReportSaleByGroupSavetimeModelImplToJson(
        _$ReportSaleByGroupSavetimeModelImpl instance) =>
    <String, dynamic>{
      'master_branch_name': instance.branchName,
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
