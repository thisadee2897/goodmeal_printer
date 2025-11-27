import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_retail_history_model.freezed.dart';
part 'detail_retail_history_model.g.dart';

@freezed
class DetailRetailHistoryModel with _$DetailRetailHistoryModel {
  const factory DetailRetailHistoryModel({
    @JsonKey(name: 'list_no') num? listNo,
    @JsonKey(name: 'item_name') String? itemName,
    @JsonKey(name: 'unit_price') num? unitPrice,
    @JsonKey(name: 'quantity') num? quantity,
    @JsonKey(name: 'amount') num? amount,
    @JsonKey(name: 'save_time') String? saveTime,
    @JsonKey(name: 'savename') String? saveName,
    @JsonKey(name: 'cancel_time') String? cancelTime,
    @JsonKey(name: 'cancelname') String? cancelName,
    @JsonKey(name: 'cancel_remark') String? cancelRemark,
    @JsonKey(name: 'orderdt_type') num? orderdtType,
    @JsonKey(name: 'orderdt_status') num? orderdtStatus,
    @JsonKey(name: 'cancel_qty') num? cancelQty,
    @JsonKey(name: 'from_table') String? fromTableName,
    @JsonKey(name: 'move_from') String? moveFromName,
    @JsonKey(name: 'move_from_time') String? moveFromTime,
    @JsonKey(name: 'move_remart') String? moveRemark,
    @JsonKey(name: 'order_src') String? orderSrc,
    @JsonKey(name: 'move_table') String? moveTableName,
    @JsonKey(name: 'move_name') String? moveName,
    @JsonKey(name: 'move_time') String? moveTime,
    @JsonKey(name: 'out_remark') String? outRemark,
    @JsonKey(name: 'move_qty') num? moveQty,
    @JsonKey(name: 'order_desc') String? orderDesc,
  }) = _DetailRetailHistoryModel;

  factory DetailRetailHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$DetailRetailHistoryModelFromJson(json);
}
