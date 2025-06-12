import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/screens/payment/controllers/providers/company.dart';
import '../apis/document_expense_credit.dart';
import 'document_expense_credit_dt.dart';

class DocumentExpenseCreditNotifier extends StateNotifier<AsyncValue<DocumentExpenseModel>> {
  DocumentExpenseCreditNotifier(this.ref) : super(const AsyncValue.data(DocumentExpenseModel()));
  final Ref ref;
  Future<void> get({required String? id}) async {
    if (id == null) {
      state = const AsyncValue.data(DocumentExpenseModel());
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      DocumentExpenseModel response = await ref.read(apiDocumentExpenseCredit).get({"expense_hd_id": id});
      return response;
    });
    if (state.hasValue) {
      await ref.read(companyProvider.notifier).get(id: state.value!.companyId);
      await ref.read(documentExpenseCreditDTProvider.notifier).get(id: id);
    }
  }
}

final documentExpenseCreditProvider =
    StateNotifierProvider<DocumentExpenseCreditNotifier, AsyncValue<DocumentExpenseModel>>((ref) => DocumentExpenseCreditNotifier(ref));
