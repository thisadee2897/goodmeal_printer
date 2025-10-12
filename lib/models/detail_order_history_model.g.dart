// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_order_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailOrderHistoryModelImpl _$$DetailOrderHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailOrderHistoryModelImpl(
      listNo: json['list_no'] as num?,
      itemName: json['item_name'] as String?,
      unitPrice: json['unit_price'] as num?,
      quantity: json['quantity'] as num?,
      amount: json['amount'] as num?,
      saveTime: json['save_time'] as String?,
      saveName: json['savename'] as String?,
      cancelTime: json['cancel_time'] as String?,
      cancelName: json['cancelname'] as String?,
      cancelRemark: json['cancel_remark'] as String?,
      orderdtType: json['orderdt_type'] as num?,
      orderdtStatus: json['orderdt_status'] as num?,
      cancelQty: json['cancel_qty'] as num?,
      fromTableName: json['from_table'] as String?,
      moveFromName: json['move_from'] as String?,
      moveFromTime: json['move_from_time'] as String?,
      moveRemark: json['move_remart'] as String?,
      orderSrc: json['order_src'] as String?,
      moveTableName: json['move_table'] as String?,
      moveName: json['move_name'] as String?,
      moveTime: json['move_time'] as String?,
      outRemark: json['out_remark'] as String?,
      moveQty: json['move_qty'] as num?,
      orderDesc: json['order_desc'] as String?,
    );

Map<String, dynamic> _$$DetailOrderHistoryModelImplToJson(
        _$DetailOrderHistoryModelImpl instance) =>
    <String, dynamic>{
      'list_no': instance.listNo,
      'item_name': instance.itemName,
      'unit_price': instance.unitPrice,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'save_time': instance.saveTime,
      'savename': instance.saveName,
      'cancel_time': instance.cancelTime,
      'cancelname': instance.cancelName,
      'cancel_remark': instance.cancelRemark,
      'orderdt_type': instance.orderdtType,
      'orderdt_status': instance.orderdtStatus,
      'cancel_qty': instance.cancelQty,
      'from_table': instance.fromTableName,
      'move_from': instance.moveFromName,
      'move_from_time': instance.moveFromTime,
      'move_remart': instance.moveRemark,
      'order_src': instance.orderSrc,
      'move_table': instance.moveTableName,
      'move_name': instance.moveName,
      'move_time': instance.moveTime,
      'out_remark': instance.outRemark,
      'move_qty': instance.moveQty,
      'order_desc': instance.orderDesc,
    };
