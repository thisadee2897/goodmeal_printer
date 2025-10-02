import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_order_history_model.freezed.dart';
part 'detail_order_history_model.g.dart';

@freezed
class DetailOrderHistoryModel with _$DetailOrderHistoryModel {
  const factory DetailOrderHistoryModel({
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
  }) = _DetailOrderHistoryModel;

  factory DetailOrderHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$DetailOrderHistoryModelFromJson(json);
}
