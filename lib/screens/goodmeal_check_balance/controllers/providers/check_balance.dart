import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/models/check_balance_model.dart';
import 'package:goodmeal_printer/models/detail_tax_invoice_model.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../views/widgets/pdf_for_check_balance_widget.dart';

class CheckBalanceNotifier extends StateNotifier<AsyncValue<CheckBalanceModel>> {
  CheckBalanceNotifier(this.ref) : super(const AsyncValue.loading());
  final Ref ref;
  List<DetailTaxInvoiceModel> dataWidget = [];
  Future<void> add({required Map<String, dynamic> body}) async {
    // if (kDebugMode) print(jsonEncode(body));
    if (body.isEmpty) {
      state = const AsyncValue.data(CheckBalanceModel());
      return;
    }
    state = await AsyncValue.guard(() async {
      CheckBalanceModel response = CheckBalanceModel.fromJson(body);
      if (kDebugMode) {
        // print(jsonEncode(response.first));
      }
      return response;
    });
    if (state.hasValue) {
      pw.Document pdfFile = pw.Document();
      var page = await PDFGeneratorCheckBalance().generate(dataBalance: state.value!);
      pdfFile.addPage(page);
      ref.read(filePdfCheckBalanceProvider.notifier).state = pdfFile;
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfCheckBalanceViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfCheckBalanceFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e, stx) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        if (kDebugMode) print('StackTrace : $stx');
        ref.read(filePdfCheckBalanceViewProvider.notifier).state = null;
      }
    }
  }
}

final checkBalanceProvider = StateNotifierProvider<CheckBalanceNotifier, AsyncValue<CheckBalanceModel>>((ref) => CheckBalanceNotifier(ref));
final filePdfCheckBalanceProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfCheckBalanceViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfCheckBalanceFileProvider = StateProvider<File?>((ref) => null);
final startDateCheckBalanceProvider = StateProvider<DateTime>((ref) => DateTime.now());
final endDateCheckBalanceProvider = StateProvider<DateTime>((ref) => DateTime.now());
final showProductCheckBalanceProvider = StateProvider<int>((ref) => 1);
