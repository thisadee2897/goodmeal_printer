// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_dt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleDTModelImpl _$$SaleDTModelImplFromJson(Map<String, dynamic> json) =>
    _$SaleDTModelImpl(
      saledtListno: json['saledt_listno'] as num?,
      saledtMasterProductBillname:
          json['saledt_master_product_billname'] as String?,
      saledtSaleprice: json['saledt_saleprice'] as num?,
      saledtQty: json['saledt_qty'] as num?,
      saledtNetamnt: json['saledt_netamnt'] as num?,
      orderdtStatusId: (json['orderdt_status_id'] as num?)?.toInt(),
      orderdtSavetime: json['orderdt_savetime'] as String?,
      savename: json['savename'] as String?,
      cancelname: json['cancelname'] as String?,
      orderdtCancelRemark: json['orderdt_cancel_remark'] as String?,
    );

Map<String, dynamic> _$$SaleDTModelImplToJson(_$SaleDTModelImpl instance) =>
    <String, dynamic>{
      'saledt_listno': instance.saledtListno,
      'saledt_master_product_billname': instance.saledtMasterProductBillname,
      'saledt_saleprice': instance.saledtSaleprice,
      'saledt_qty': instance.saledtQty,
      'saledt_netamnt': instance.saledtNetamnt,
      'orderdt_status_id': instance.orderdtStatusId,
      'orderdt_savetime': instance.orderdtSavetime,
      'savename': instance.savename,
      'cancelname': instance.cancelname,
      'orderdt_cancel_remark': instance.orderdtCancelRemark,
    };
