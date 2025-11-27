import 'package:goodmeal_printer/models/detail_retail_history_model.dart';
import 'package:goodmeal_printer/models/footer_retail_history_model.dart';
import 'package:goodmeal_printer/models/header_retail_history_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'retail_history_model.freezed.dart';
part 'retail_history_model.g.dart';

@freezed
class RetailHistoryModel with _$RetailHistoryModel {
  const factory RetailHistoryModel({
    @JsonKey(name: 'header') HeaderRetailHistoryModel? header,
    @JsonKey(name: 'details') List<DetailRetailHistoryModel>? details,
    @JsonKey(name: 'footer') FooterRetailHistoryModel? footer,
  }) = _RetailHistoryModel;

  factory RetailHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$RetailHistoryModelFromJson(json);
}
