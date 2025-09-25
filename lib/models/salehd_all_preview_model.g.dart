// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salehd_all_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalehdAllPreviewModelImpl _$$SalehdAllPreviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SalehdAllPreviewModelImpl(
      typeBill: json['type_bill'] as String?,
      typeBillName: json['type_bill_name'] as String?,
      salehdId: json['salehd_id'] as String?,
      salehdDocudate: json['salehd_docudate'] as String?,
      salehdTime: json['salehd_time'] as String?,
      salehdDocuno: json['salehd_docuno'] as String?,
      salehdStatusid: json['salehd_statusid'] as num?,
      salehdEmpemployeemasterid: json['salehd_empemployeemasterid'] as String?,
      salehdArcustomerid: json['salehd_arcustomerid'] as String?,
      salehdArcustomerName: json['salehd_arcustomer_name'] as String?,
      salehdArcustomerTaxid: json['salehd_arcustomer_taxid'] as String?,
      salehdArcustomerAddr: json['salehd_arcustomer_addr'] as String?,
      salehdArcustomerAddrDistrictId:
          json['salehd_arcustomer_addr_district_id'] as String?,
      salehdArcustomerAddrPrefectureId:
          json['salehd_arcustomer_addr_prefecture_id'] as String?,
      salehdArcustomerAddrProvinceId:
          json['salehd_arcustomer_addr_province_id'] as String?,
      salehdArcustomerAddrPostcodeId:
          json['salehd_arcustomer_addr_postcode_id'] as String?,
      salehdRemark: json['salehd_remark'] as String?,
      salehdVatgroupId: json['salehd_vatgroup_id'] as num?,
      salehdVatrate: json['salehd_vatrate'] as String?,
      salehdTotalexcludeamnt: json['salehd_totalexcludeamnt'] as String?,
      salehdTotalincludeamnt: json['salehd_totalincludeamnt'] as String?,
      salehdTotalincludeamntAfterdepositamnt:
          json['salehd_totalincludeamnt_afterdepositamnt'] as String?,
      salehdBaseamnt: json['salehd_baseamnt'] as String?,
      salehdVatamnt: json['salehd_vatamnt'] as String?,
      salehdSumgoodamnt: json['salehd_sumgoodamnt'] as String?,
      salehdDiscountamnt: json['salehd_discountamnt'] as String?,
      salehdNetamnt: json['salehd_netamnt'] as String?,
      salehdCashamnt: json['salehd_cashamnt'] as String?,
      salehdTransferamnt: json['salehd_transferamnt'] as String?,
      salehdCreditcardamnt: json['salehd_creditcardamnt'] as String?,
      salehdDepositamnt: json['salehd_depositamnt'] as String?,
      branchId: json['master_branch_id'] as String?,
      companyId: json['master_company_id'] as num?,
      salehdDiscountTypeId: json['salehd_discount_type_id'] as String?,
      salehdCashamntActual: json['salehd_cashamnt_actual'] as String?,
      salehdChangeamnt: json['salehd_changeamnt'] as String?,
      salehdPrintTaxinvoice: json['salehd_print_taxinvoice'] as bool?,
      salehdVoucheramnt: json['salehd_voucheramnt'] as String?,
      salehdVoucherTypeId: json['salehd_voucher_type_id'] as String?,
      salehdPointQuantity: json['salehd_point_quantity'] as String?,
      salehdPointTypeId: json['salehd_point_type_id'] as num?,
      salehdPointRedeem: json['salehd_point_redeem'] as String?,
      salehdWhtCategoryId: json['salehd_wht_category_id'] as String?,
      salehdWhtamnt: json['salehd_whtamnt'] as String?,
      salehdArcustomerRedeemid: json['salehd_arcustomer_redeemid'] as String?,
      salehdArcustomerRedeemname:
          json['salehd_arcustomer_redeemname'] as String?,
      salehdTipamnt: json['salehd_tipamnt'] as String?,
      salehdTableName: json['salehd_table_name'] as String?,
      salehdFeeamnt: json['salehd_feeamnt'] as String?,
      salehdServiceChargeamnt: json['salehd_service_chargeamnt'] as String?,
      salehdPrintTaxinvoiceLanguage:
          json['salehd_print_taxinvoice_language'] as num?,
      salehdServiceChargeamntTakeaway:
          json['salehd_service_chargeamnt_takeaway'] as String?,
      salehdPartneramnt: json['salehd_partneramnt'] as String?,
      salehdDiscountTypeName: json['salehd_discount_type_name'] as String?,
      promotionPointTypeName: json['promotion_point_type_name'] as String?,
      promotionPointTypeRate: json['promotion_point_type_rate'] as String?,
      whtCategoryName: json['wht_category_name'] as String?,
      salehdArcustomerRedeemcode:
          json['salehd_arcustomer_redeemcode'] as String?,
      vatGroupName: json['master_vat_group_name'] as String?,
      salehdRemarkOrder: json['salehd_remark_order'] as String?,
      salehdEmpemployeemastercode:
          json['salehd_empemployeemastercode'] as String?,
      empName: json['emp_name'] as String?,
      arcustomerTaxinvoiceName: json['arcustomer_taxinvoice_name'] as String?,
      arcustomerTaxinvoiceTel: json['arcustomer_taxinvoice_tel'] as String?,
      arcustomerTaxinvoiceTaxid: json['arcustomer_taxinvoice_taxid'] as String?,
      arcustomerTaxinvoiceAddr: json['arcustomer_taxinvoice_addr'] as String?,
      carryForwardPoints: json['carry_forward_points'] as String?,
      pointsRedeemed: json['points_redeemed'] as String?,
      pointsEarned: json['points_earned'] as String?,
      currentTotalPoints: json['current_total_points'] as String?,
      salehdDocudateInvoice: json['salehd_docudate_invoice'] as String?,
      pointQuantity: json['point_quantity'] as String?,
      saleHdDiscount: json['sale_hd_discount'] as List<dynamic>?,
      saleDt: (json['sale_dt'] as List<dynamic>?)
              ?.map((e) => SaleDTModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      saleHdPaymentType: (json['sale_hd_payment_type'] as List<dynamic>?)
              ?.map((e) =>
                  SaleHDPaymentTypeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SalehdAllPreviewModelImplToJson(
        _$SalehdAllPreviewModelImpl instance) =>
    <String, dynamic>{
      'type_bill': instance.typeBill,
      'type_bill_name': instance.typeBillName,
      'salehd_id': instance.salehdId,
      'salehd_docudate': instance.salehdDocudate,
      'salehd_time': instance.salehdTime,
      'salehd_docuno': instance.salehdDocuno,
      'salehd_statusid': instance.salehdStatusid,
      'salehd_empemployeemasterid': instance.salehdEmpemployeemasterid,
      'salehd_arcustomerid': instance.salehdArcustomerid,
      'salehd_arcustomer_name': instance.salehdArcustomerName,
      'salehd_arcustomer_taxid': instance.salehdArcustomerTaxid,
      'salehd_arcustomer_addr': instance.salehdArcustomerAddr,
      'salehd_arcustomer_addr_district_id':
          instance.salehdArcustomerAddrDistrictId,
      'salehd_arcustomer_addr_prefecture_id':
          instance.salehdArcustomerAddrPrefectureId,
      'salehd_arcustomer_addr_province_id':
          instance.salehdArcustomerAddrProvinceId,
      'salehd_arcustomer_addr_postcode_id':
          instance.salehdArcustomerAddrPostcodeId,
      'salehd_remark': instance.salehdRemark,
      'salehd_vatgroup_id': instance.salehdVatgroupId,
      'salehd_vatrate': instance.salehdVatrate,
      'salehd_totalexcludeamnt': instance.salehdTotalexcludeamnt,
      'salehd_totalincludeamnt': instance.salehdTotalincludeamnt,
      'salehd_totalincludeamnt_afterdepositamnt':
          instance.salehdTotalincludeamntAfterdepositamnt,
      'salehd_baseamnt': instance.salehdBaseamnt,
      'salehd_vatamnt': instance.salehdVatamnt,
      'salehd_sumgoodamnt': instance.salehdSumgoodamnt,
      'salehd_discountamnt': instance.salehdDiscountamnt,
      'salehd_netamnt': instance.salehdNetamnt,
      'salehd_cashamnt': instance.salehdCashamnt,
      'salehd_transferamnt': instance.salehdTransferamnt,
      'salehd_creditcardamnt': instance.salehdCreditcardamnt,
      'salehd_depositamnt': instance.salehdDepositamnt,
      'master_branch_id': instance.branchId,
      'master_company_id': instance.companyId,
      'salehd_discount_type_id': instance.salehdDiscountTypeId,
      'salehd_cashamnt_actual': instance.salehdCashamntActual,
      'salehd_changeamnt': instance.salehdChangeamnt,
      'salehd_print_taxinvoice': instance.salehdPrintTaxinvoice,
      'salehd_voucheramnt': instance.salehdVoucheramnt,
      'salehd_voucher_type_id': instance.salehdVoucherTypeId,
      'salehd_point_quantity': instance.salehdPointQuantity,
      'salehd_point_type_id': instance.salehdPointTypeId,
      'salehd_point_redeem': instance.salehdPointRedeem,
      'salehd_wht_category_id': instance.salehdWhtCategoryId,
      'salehd_whtamnt': instance.salehdWhtamnt,
      'salehd_arcustomer_redeemid': instance.salehdArcustomerRedeemid,
      'salehd_arcustomer_redeemname': instance.salehdArcustomerRedeemname,
      'salehd_tipamnt': instance.salehdTipamnt,
      'salehd_table_name': instance.salehdTableName,
      'salehd_feeamnt': instance.salehdFeeamnt,
      'salehd_service_chargeamnt': instance.salehdServiceChargeamnt,
      'salehd_print_taxinvoice_language':
          instance.salehdPrintTaxinvoiceLanguage,
      'salehd_service_chargeamnt_takeaway':
          instance.salehdServiceChargeamntTakeaway,
      'salehd_partneramnt': instance.salehdPartneramnt,
      'salehd_discount_type_name': instance.salehdDiscountTypeName,
      'promotion_point_type_name': instance.promotionPointTypeName,
      'promotion_point_type_rate': instance.promotionPointTypeRate,
      'wht_category_name': instance.whtCategoryName,
      'salehd_arcustomer_redeemcode': instance.salehdArcustomerRedeemcode,
      'master_vat_group_name': instance.vatGroupName,
      'salehd_remark_order': instance.salehdRemarkOrder,
      'salehd_empemployeemastercode': instance.salehdEmpemployeemastercode,
      'emp_name': instance.empName,
      'arcustomer_taxinvoice_name': instance.arcustomerTaxinvoiceName,
      'arcustomer_taxinvoice_tel': instance.arcustomerTaxinvoiceTel,
      'arcustomer_taxinvoice_taxid': instance.arcustomerTaxinvoiceTaxid,
      'arcustomer_taxinvoice_addr': instance.arcustomerTaxinvoiceAddr,
      'carry_forward_points': instance.carryForwardPoints,
      'points_redeemed': instance.pointsRedeemed,
      'points_earned': instance.pointsEarned,
      'current_total_points': instance.currentTotalPoints,
      'salehd_docudate_invoice': instance.salehdDocudateInvoice,
      'point_quantity': instance.pointQuantity,
      'sale_hd_discount': instance.saleHdDiscount,
      'sale_dt': instance.saleDt,
      'sale_hd_payment_type': instance.saleHdPaymentType,
    };
