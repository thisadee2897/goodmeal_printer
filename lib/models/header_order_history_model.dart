import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_order_history_model.freezed.dart';
part 'header_order_history_model.g.dart';

@freezed
class HeaderOrderHistoryModel with _$HeaderOrderHistoryModel {
  const factory HeaderOrderHistoryModel({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'company_logo_image_network')
    String? companyLogoImageNetwork,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'company_address') String? companyAddress,
    @JsonKey(name: 'company_phone_number') String? companyPhoneNumber,
    @JsonKey(name: 'company_tax_id') String? companyTaxId,
    @JsonKey(name: 'employee_name') String? employeeName,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'table_number') String? tableNumber,
    @JsonKey(name: 'docu_no') String? docuNo,
    @JsonKey(name: 'docu_date') String? docuDate,
    @JsonKey(name: 'machine_name') String? machineName,
  }) = _HeaderOrderHistoryModel;

  factory HeaderOrderHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$HeaderOrderHistoryModelFromJson(json);
}
