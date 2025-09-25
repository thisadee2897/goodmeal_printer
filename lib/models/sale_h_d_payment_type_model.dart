
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_h_d_payment_type_model.freezed.dart';
part 'sale_h_d_payment_type_model.g.dart';

@freezed
class SaleHDPaymentTypeModel with _$SaleHDPaymentTypeModel {
  const factory SaleHDPaymentTypeModel({
  @JsonKey(name: 'salehd_cashamnt') num? salehdCashamnt,
  @JsonKey(name: 'type_cas') String? typeCas,
  @JsonKey(name: 'salehd_transferamnt') num? salehdTransferamnt,
  @JsonKey(name: 'type_transfer') String? typeTransfer,
  @JsonKey(name: 'salehd_creditcardamnt') num? salehdCreditcardamnt,
  @JsonKey(name: 'type_credit_card') String? typeCreditCard,
  @JsonKey(name: 'salehd_depositamnt') num? salehdDepositamnt,
  @JsonKey(name: 'type_deposit') String? typeDeposit,
  @JsonKey(name: 'salehd_voucheramnt') num? salehdVoucheramnt,
  @JsonKey(name: 'type_cheque') String? typeCheque,
  @JsonKey(name: 'salehd_partneramnt') num? salehdPartneramnt,
  @JsonKey(name: 'type_partner') String? typePartner,
  }) = _SaleHDPaymentTypeModel;

  factory SaleHDPaymentTypeModel.fromJson(Map<String, dynamic> json) => _$SaleHDPaymentTypeModelFromJson(json);
}
