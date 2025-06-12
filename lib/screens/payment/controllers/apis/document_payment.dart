import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goodmeal_printer/config/routes/route_helper.dart';
import 'package:goodmeal_printer/models/document_payment_model.dart';
import 'package:goodmeal_printer/utils/services/rest_api_service.dart';

class DocumentPaymentApi {
  final Ref ref;
  DocumentPaymentApi({required this.ref});
  final String _detail = '/Payment/Payment/get_document_payment';

  Future<DocumentPaymentModel> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    if (response.data == null) {
      ref.read(routerHelperProvider).goPath('/error');
      return const DocumentPaymentModel();
    } else {
      try {
        Map<String, dynamic> data = Map<String, dynamic>.from(response.data);
        return DocumentPaymentModel.fromJson(data);
      } catch (err, stx) {
        if (kDebugMode) print(err);
        if (kDebugMode) print(stx);
        return const DocumentPaymentModel();
      }
    }
  }
}

final apiDocumentPayment = Provider<DocumentPaymentApi>((ref) => DocumentPaymentApi(ref: ref));
