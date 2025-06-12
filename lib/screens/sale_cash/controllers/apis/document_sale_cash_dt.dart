import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/models/document_sale_d_t_model.dart';

class DocumentSaleCashDTApi {
  final Ref ref;
  DocumentSaleCashDTApi({required this.ref});
  final String _detail = '/Saledata/Sale/get_document_get_sale_dt';

  Future<List<DocumentSaleDTModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => DocumentSaleDTModel.fromJson(e)).toList();
  }
}

final apiDocumentSaleCashDT = Provider<DocumentSaleCashDTApi>((ref) => DocumentSaleCashDTApi(ref: ref));
