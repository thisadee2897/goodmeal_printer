import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_return_to_reduce_credit_debt.dart';
import 'document_return_to_reduce_credit_debt_dt.dart';

class DocumentReturnToReduceCreditDebtNotifier extends StateNotifier<AsyncValue<DocumentCreditNoteModel>> {
  DocumentReturnToReduceCreditDebtNotifier(this.ref) : super(const AsyncValue.data(DocumentCreditNoteModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentCreditNoteModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentCreditNoteModel response = await ref.read(apiDocumentReturnToReduceCreditDebt).get({"creditnote_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentReturnToReduceCreditDebtDTProvider.notifier).get(id: id);
    }
  }
}

final documentReturnToReduceCreditDebtProvider = StateNotifierProvider<DocumentReturnToReduceCreditDebtNotifier, AsyncValue<DocumentCreditNoteModel>>(
    (ref) => DocumentReturnToReduceCreditDebtNotifier(ref));
