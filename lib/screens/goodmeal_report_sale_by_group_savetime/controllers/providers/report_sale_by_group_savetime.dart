import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/models/detail_tax_invoice_model.dart';
import 'package:goodmeal_printer/screens/goodmeal_report_sale_by_group_savetime/views/widgets/pdf_for_report_sale_by_group_savetime_widget.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../models/branch_model_report_sale_by_group_savetime.dart';
import '../../models/product_model_report_sale_by_group_savetime.dart';
import '../apis/report_sale_by_group_savetime.dart';

class ReportSaleByGroupSavetimeNotifier extends StateNotifier<AsyncValue<List<BranchModelReportSaleByGroupSavetime>>> {
  ReportSaleByGroupSavetimeNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  List<DetailTaxInvoiceModel> dataWidget = [];
  Future<void> get({required Map<String, dynamic> body}) async {
    if(kDebugMode) print(jsonEncode(body));
    if (body.isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<BranchModelReportSaleByGroupSavetime> response = await ref.read(apiReportSaleByGroupSavetime).get(body);
      if (kDebugMode) {
        // print(jsonEncode(response.first));
      }
      return response;
    });
    if (state.hasValue) {
      pw.Document pdfFile = pw.Document();
      var dataApi = state.value ?? [];
      List<ProductModelReportSaleByGroupSavetime> dataProducts = [];
      for (var branch in dataApi) {
        for (var product in branch.listProduct) {
          dataProducts.add(product);
          if (dataProducts.length % 40 == 0) {
            var page = await PDFGeneratorReportSaleByGroupSavetime().generate(
              branch: branch,
              products: dataProducts,
              startDate: ref.read(startDateReportSaleByGroupSavetimeProvider),
              endDate: ref.read(endDateReportSaleByGroupSavetimeProvider),
              showProduct: ref.read(showProductReportSaleByGroupSavetimeProvider) == 1, // 1 คือ แสดงสินค้า 2 คือ แสดงเฉพาะหกลุ่มสินค้า
            );
            pdfFile.addPage(page);
            dataProducts = [];
          } else {
            if (product == branch.listProduct.last) {
              var page = await PDFGeneratorReportSaleByGroupSavetime().generate(
                branch: branch,
                products: dataProducts,
                startDate: ref.read(startDateReportSaleByGroupSavetimeProvider),
                endDate: ref.read(endDateReportSaleByGroupSavetimeProvider),
                showProduct: ref.read(showProductReportSaleByGroupSavetimeProvider) == 1, // 1 คือ แสดงสินค้า 2 คือ แสดงเฉพาะหกลุ่มสินค้า
              );
              pdfFile.addPage(page);
              dataProducts = [];
            }
          }
        }
      }
      ref.read(filePdfReportSaleByGroupSavetimeProvider.notifier).state = pdfFile;
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref.read(filePdfReportSaleByGroupSavetimeViewProvider.notifier).state = Uint8List.fromList(listPDF);
        ref.read(filePdfReportSaleByGroupSavetimeFileProvider.notifier).state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfSaleViewProvider');
      } catch (e, stx) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        if (kDebugMode) print('StackTrace : $stx');
        ref.read(filePdfReportSaleByGroupSavetimeViewProvider.notifier).state = null;
      }
    }
  }
}

final reportSaleByGroupSavetimeProvider = StateNotifierProvider<ReportSaleByGroupSavetimeNotifier, AsyncValue<List<BranchModelReportSaleByGroupSavetime>>>(
  (ref) => ReportSaleByGroupSavetimeNotifier(ref),
);
final filePdfReportSaleByGroupSavetimeProvider = StateProvider<pw.Document>((ref) => pw.Document());
final filePdfReportSaleByGroupSavetimeViewProvider = StateProvider<Uint8List?>((ref) => null);
final filePdfReportSaleByGroupSavetimeFileProvider = StateProvider<File?>((ref) => null);
final startDateReportSaleByGroupSavetimeProvider = StateProvider<DateTime>((ref) => DateTime.now());
final endDateReportSaleByGroupSavetimeProvider = StateProvider<DateTime>((ref) => DateTime.now());
final showProductReportSaleByGroupSavetimeProvider = StateProvider<int>((ref) => 1);
