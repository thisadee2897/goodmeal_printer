import 'package:goodmeal_printer/models/category_model.dart';
import 'package:goodmeal_printer/models/discount_model.dart';
import 'package:goodmeal_printer/models/payment_method_model.dart';
import 'package:goodmeal_printer/models/point_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'footer_retail_history_model.freezed.dart';
part 'footer_retail_history_model.g.dart';

@freezed
class FooterRetailHistoryModel with _$FooterRetailHistoryModel {
  const factory FooterRetailHistoryModel({
    @JsonKey(name: 'total_items') num? totalItems,
    @JsonKey(name: 'total_amount') num? totalAmount,
    @JsonKey(name: 'service_charge') num? serviceCharge,
    @JsonKey(name: 'discounts') List<DiscountModel>? discounts,
    @JsonKey(name: 'total_discount') num? totalDiscount,
    @JsonKey(name: 'vat_included') num? vatIncluded,
    @JsonKey(name: 'net_amount') num? netAmount,
    @JsonKey(name: 'cash_received') num? cashReceived,
    @JsonKey(name: 'change') num? change,
    @JsonKey(name: 'payment_methods') List<PaymentMethodModel>? paymentMethods,
    @JsonKey(name: 'categories') List<CategoryModel>? categories,
    @JsonKey(name: 'total_categories_amount') num? totalCategoriesAmount,
    @JsonKey(name: 'points') List<PointModel>? points,
  }) = _FooterRetailHistoryModel;

  factory FooterRetailHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$FooterRetailHistoryModelFromJson(json);
}
