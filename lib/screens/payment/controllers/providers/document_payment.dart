import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goodmeal_printer/models/document_payment_model.dart';
import 'package:goodmeal_printer/screens/payment/controllers/apis/document_payment.dart';
import 'package:goodmeal_printer/screens/payment/controllers/providers/company.dart';
import 'package:goodmeal_printer/screens/payment/controllers/providers/document_payment_dt.dart';

class DocumentPaymentNotifier extends StateNotifier<AsyncValue<DocumentPaymentModel>> {
  DocumentPaymentNotifier(this.ref) : super(const AsyncValue.data(DocumentPaymentModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentPaymentModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentPaymentModel response = await ref.read(apiDocumentPayment).get({"payment_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentPaymentDTProvider.notifier).get(id: id);
    }
  }
}

final documentPaymentProvider = StateNotifierProvider<DocumentPaymentNotifier, AsyncValue<DocumentPaymentModel>>((ref) => DocumentPaymentNotifier(ref));
