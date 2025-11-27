import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/models/detail_retail_history_model.dart';
import 'package:goodmeal_printer/models/retail_history_model.dart';
import 'package:goodmeal_printer/screens/goodmeal_retail_history/controllers/apis/retail_history_api.dart';
import 'package:goodmeal_printer/screens/goodmeal_retail_history/views/widgets/pdf_for_retail_history.dart';
import 'package:pdf/widgets.dart' as pw;

class RetailHistoriesNotifier
    extends StateNotifier<AsyncValue<List<RetailHistoryModel>>> {
  RetailHistoriesNotifier(this.ref) : super(const AsyncValue.data([]));
  final Ref ref;
  List<DetailRetailHistoryModel> dataWidget = [];
  Future<void> get({required Map<String, dynamic> body}) async {
    if (body.isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // print(' RetailHistoriesNotifier. --> body: ${jsonEncode(body)}');
      // return [];
      List<RetailHistoryModel> response = await ref
          .read(apiRetailHistories)
          .get(body);
      // print(jsonEncode(response));
      return response;
    });
    await genPDFFile();
  }

  Future<pw.Document?> genPDFFile() async {
    if (state.hasValue) {
      pw.Document pdfFile = pw.Document();
      bool showDiscounts = false;
      bool showPaymentMethods = false;
      // bool showCategories = false;
      bool showPoints = false;
      try {
        for (RetailHistoryModel element in state.value!) {
          List detailList = element.details?.map((e) => e).toList() ?? [];
          // print('detailList: ${detailList.length}');
          dataWidget = [];
          showDiscounts = false;
          showPaymentMethods = false;
          // showCategories = false;
          showPoints = false;
          for (int i = 1; i <= detailList.length; i++) {
            dataWidget.add(detailList[i - 1]);
            int itemPoints = element.footer!.points!.length;
            // int itemCategories = element.footer!.categories!.length;
            int itemPaymentMethods = element.footer!.paymentMethods!.length;
            int itemDiscounts = element.footer!.discounts!.length;
            int footerSectionDiscounts = 7 + itemDiscounts;
            int footerSectionPaymentMethods = 4 + itemPaymentMethods;
            // int footerSectionCategories = 3 + itemCategories;
            int footerSectionPoints = 1 + itemPoints;
            if (i % 16 == 0) {
              element = element.copyWith(details: dataWidget);
              var page = await PDFGeneratorRetailHistory().generate(
                dt: element,
                showDiscounts: showDiscounts,
                showPaymentMethods: showPaymentMethods,
                // showCategories: showCategories,
                showPoints: showPoints,
              );
              pdfFile.addPage(page);
              ref
                  .read(listPageProvider.notifier)
                  .update((state) => [...state, page]);
              dataWidget = [];
            }
            if (i == detailList.length) {
              // กรณีเพิ่มได้ทั้งหมด
              await addFooter(
                footerSectionDiscounts,
                footerSectionPaymentMethods,
                // footerSectionCategories,
                footerSectionPoints,
                element,
                pdfFile,
              );
              // กรณี เพิ่มได้แค่
            }
          }
        }
      } catch (e, stx) {
        if (kDebugMode) print('Error generating PDF: $e');
        if (kDebugMode) print('StackTrace generating---><: $stx');
      }

      ref.read(filePdfRetailHistoryProvider.notifier).state = pdfFile;
      // await Printing.sharePdf(bytes: await pdfFile.save());
      // await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
      try {
        List<int> intFile = await pdfFile.save();
        String base64File = base64Encode(intFile);
        List<int> listPDF = base64Decode(base64File);
        ref
            .read(filePdfRetailHistoryViewProvider.notifier)
            .state = Uint8List.fromList(listPDF);
        ref
            .read(filePdfRetailHistoryFileProvider.notifier)
            .state = File.fromRawPath(Uint8List.fromList(listPDF));
        if (kDebugMode) print('Success filePdfRetailHitoryProvider');
      } catch (e, stx) {
        if (kDebugMode) print('Error filePdfSaleViewProvider : $e');
        if (kDebugMode) print('StackTrace ------<>: $stx');
        ref.read(filePdfRetailHistoryViewProvider.notifier).state = null;
      }
      return pdfFile;
    } else {
      ref.read(filePdfRetailHistoryViewProvider.notifier).state = null;
      return null;
    }
  }

  Future<void> addFooter(
    int footerSectionDiscounts,
    int footerSectionPaymentMethods,
    // int footerSectionCategories,
    int footerSectionPoints,
    RetailHistoryModel element,
    pw.Document pdfFile,
  ) async {
    const int maxPerPage = 30;
    int remaining = maxPerPage - dataWidget.length;

    // กลุ่ม footer ตามลำดับ
    final List<int> sections = [
      footerSectionDiscounts,
      footerSectionPaymentMethods,
      // footerSectionCategories,
      footerSectionPoints,
    ];

    List<List<bool>> pages = [];
    List<bool> currentPage = [false, false, false];
    // print('sections : $sections');
    for (int i = 0; i < sections.length; i++) {
      // print('remaining : $remaining');
      if (sections[i] <= remaining) {
        currentPage[i] = true;
        remaining -= sections[i];
        // print('currentPage $i : $currentPage');
      } else {
        // ถ้าใส่ไม่พอ เริ่มหน้าใหม่
        pages.add([...currentPage]);
        currentPage = [false, false, false, false];
        remaining = maxPerPage;
        // print('currentPage : $currentPage');
        // ลองใส่อีกรอบในหน้าใหม่
        if (sections[i] <= remaining) {
          currentPage[i] = true;
          remaining -= sections[i];
        } else {
          // ถ้ายังไม่พอ แยกหน้าเดี่ยวสำหรับกลุ่มนี้
          pages.add([...currentPage]);
          currentPage = [false, false, false, false];
          currentPage[i] = true;
          remaining = maxPerPage - sections[i];
        }
        // print('currentPage : $currentPage');
      }
    }

    // เพิ่มหน้าสุดท้าย
    pages.add([...currentPage]);

    // กรณีพิเศษ: ถ้า dataWidget เองเกิน 30 รายการ
    if (dataWidget.length > maxPerPage) {
      if (kDebugMode) print('Error: Data exceeds page limit');
      return;
    }

    // สร้างหน้าท้าย
    for (var page in pages) {
      await addLastPage(element, pdfFile, page);
    }
  }

  Future<void> addLastPage(
    RetailHistoryModel element,
    pw.Document pdfFile,
    List<bool> listBool,
  ) async {
    element = element.copyWith(details: dataWidget);
    var page1 = await PDFGeneratorRetailHistory().generate(
      dt: element,
      showDiscounts: listBool[0],
      showPaymentMethods: listBool[1],
      // showCategories: listBool[2],
      showPoints: listBool[2],
    );
    dataWidget = [];
    pdfFile.addPage(page1);
    ref.read(listPageProvider.notifier).update((state) => [...state, page1]);
  }
}

final retailHistoriesProvider = StateNotifierProvider<
  RetailHistoriesNotifier,
  AsyncValue<List<RetailHistoryModel>>
>((ref) => RetailHistoriesNotifier(ref));
final filePdfRetailHistoryProvider = StateProvider<pw.Document>(
  (ref) => pw.Document(),
);
final filePdfRetailHistoryViewProvider = StateProvider<Uint8List?>(
  (ref) => null,
);
final filePdfRetailHistoryFileProvider = StateProvider<File?>((ref) => null);
final listPageProvider = StateProvider<List<pw.Page>>((ref) => []);
