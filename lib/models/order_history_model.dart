import 'package:goodmeal_printer/models/detail_order_history_model.dart';
import 'package:goodmeal_printer/models/footer_order_history_model.dart';
import 'package:goodmeal_printer/models/header_order_history_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_model.freezed.dart';
part 'order_history_model.g.dart';

@freezed
class OrderHistoryModel with _$OrderHistoryModel {
  const factory OrderHistoryModel({
    @JsonKey(name: 'header') HeaderOrderHistoryModel? header,
    @JsonKey(name: 'details') List<DetailOrderHistoryModel>? details,
    @JsonKey(name: 'footer') FooterOrderHistoryModel? footer,
  }) = _OrderHistoryModel;

  factory OrderHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryModelFromJson(json);
}
