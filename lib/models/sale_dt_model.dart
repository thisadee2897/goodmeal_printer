import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_dt_model.freezed.dart';
part 'sale_dt_model.g.dart';

@freezed
class SaleDTModel with _$SaleDTModel {
  const factory SaleDTModel({
    @JsonKey(name: 'saledt_listno') num? saledtListno,
    @JsonKey(name: 'saledt_master_product_billname') String? saledtMasterProductBillname,
    @JsonKey(name: 'saledt_saleprice') num? saledtSaleprice,
    @JsonKey(name: 'saledt_qty') num? saledtQty,
    @JsonKey(name: 'saledt_netamnt') num? saledtNetamnt,
    @JsonKey(name: 'orderdt_status_id') int? orderdtStatusId,
    @JsonKey(name: 'orderdt_savetime') String? orderdtSavetime,
    @JsonKey(name: 'savename') String? savename,
    @JsonKey(name: 'cancelname') String? cancelname,
    @JsonKey(name: 'orderdt_cancel_remark') String? orderdtCancelRemark,
  }) = _SaleDTModel;

  factory SaleDTModel.fromJson(Map<String, dynamic> json) => _$SaleDTModelFromJson(json);
}
