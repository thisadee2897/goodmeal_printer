import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/models/full_tax_invoice_model.dart';

class FullTaxInvoiceApi {
  final Ref ref;
  FullTaxInvoiceApi({required this.ref});
  final String _detail = 'print_full_tax_invoice';
  Future<List<FullTaxInvoiceModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => FullTaxInvoiceModel.fromJson(e)).toList();
  }

  Future<List<FullTaxInvoiceModel>> getDummy(Map<String, dynamic> body) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      List<Map<String, dynamic>> data = ref.read(dummyDataFullTaxInvoice);
      return data.map((e) => FullTaxInvoiceModel.fromJson(e)).toList();
    } catch (e,stx) {
      debugPrint("Error in getDummy: $e");
      debugPrint("Stack trace: $stx");
      return [];
    }
  }
}

final apiFullTaxInvoice = Provider<FullTaxInvoiceApi>((ref) => FullTaxInvoiceApi(ref: ref));

final dummyDataFullTaxInvoice = Provider<List<Map<String, dynamic>>>((ref) {
  return [
    {
      "original": true,
      "copy": true,
      "header": {
        "title": "ใบกำกับภาษี/ใบเสร็จรับเงิน",
        "company_logo_image_network": "https://play-lh.googleusercontent.com/09bryua3mfaR8lVaRZL4ZFmIHYXndC1aYdyrn7NSpPl13YHV-vQ2n0wi0xNk4Wdrft8",
        "company_name": "บริษัท พีพีเอส จำกัด",
        "company_address": "856/68 ถนนพระราม 9 แขวงสวนหลวง เขตสวนหลวง กรุงเทพมหานคร 10250",
        "company_phone_number": "02-6361566",
        "company_tax_id": "0155661444399",
        "customer_name": "บริษัท ทรัพย์มั่งมี ศรีสุข จำกัด",
        "customer_address": "892 ถนนรำมค ำแหง แขวงวังทองทลำง เขตวังทองหลำง กรุงเทพมหานคร 10310 ",
        "customer_phone_number": "0958644567",
        "customer_tax_id": "0105566144888",
        "docu_no": "TAX2025052200001",
        "docu_date": "2025-05-22",
        "branchs": [
          {"branch_name": "สำนักงานใหญ่", "selected": false},
          {"branch_name": "สาขา 00001", "selected": true}
        ]
      },
      "details": [
        {"list_no": 1, "item_name": "ค่าอาหารและเครื่องดื่ม", "amount": 3105.00},
        {"list_no": 2, "item_name": "ค่าบริการจัดเลี้ยง", "amount": 1500.00},
        {"list_no": 3, "item_name": "ค่าขนส่ง", "amount": 500.00}
      ],
      "footer": {
        "payment_method": "เงินสด , โอนเงิน",
        "vat_exempt": 0.00,
        "vat_included": 2901.00,
        "vat_amount": 203.13,
        "withholding_tax": 0.00,
        "net_amount": 3105.00
      }
    },
    {
      "original": true,
      "copy": true,
      "header": {
        "title": "ใบกำกับภาษี/ใบเสร็จรับเงิน",
        "company_logo_image_network": "https://play-lh.googleusercontent.com/09bryua3mfaR8lVaRZL4ZFmIHYXndC1aYdyrn7NSpPl13YHV-vQ2n0wi0xNk4Wdrft8",
        "company_name": "บริษัท พีพีเอส จำกัด",
        "company_address": "856/68 ถนนพระราม 9 แขวงสวนหลวง เขตสวนหลวง กรุงเทพมหานคร 10250",
        "company_phone_number": "02-6361566",
        "company_tax_id": "0155661444399",
        "customer_name": "บริษัท พีพีเอส จำกัด",
        "customer_address": "892 ถนนรำมค ำแหง แขวงวังทองทลำง เขตวังทองหลำง กรุงเทพมหำนคร 10310 ",
        "customer_phone_number": "0958644567",
        "customer_tax_id": "0105566144888",
        "docu_no": "TAX2025052200002",
        "docu_date": "2025-05-22",
        "branchs": [
          {"branch_name": "สำนักงานใหญ่", "selected": false},
          {"branch_name": "สาขา 00001", "selected": true}
        ]
      },
      "details": [
        {"list_no": 1, "item_name": "ค่าอาหารและเครื่องดื่ม", "amount": 3105.00}
      ],
      "footer": {
        "payment_method": "เงินสด , โอนเงิน",
        "vat_exempt": 0.00,
        "vat_included": 2901.00,
        "vat_amount": 203.13,
        "withholding_tax": 0.00,
        "net_amount": 3105.00
      }
    }
  ];
});
