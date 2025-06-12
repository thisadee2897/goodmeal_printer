import 'package:flutter/foundation.dart';
import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:ui' as ui;
import 'package:printing/printing.dart';

final genarateToPDFGoodReceiveCashProvider = StateNotifierProvider<GenaratePDFGoodReceiveCashNotifier, AsyncValue<pw.Document>>(
  (ref) => GenaratePDFGoodReceiveCashNotifier(),
);

class GenaratePDFGoodReceiveCashNotifier extends StateNotifier<AsyncValue<pw.Document>> {
  GenaratePDFGoodReceiveCashNotifier() : super(AsyncValue.data(pw.Document())) {
    _pdfFile = pw.Document();
  }

  late pw.Document _pdfFile;

  Future<void> printPdf(List<GlobalKey> widgetKeys) async {
    try {
      _pdfFile = pw.Document();
      List<Uint8List> images = [];
      for (var key in widgetKeys) {
        final boundary = key.currentContext?.findRenderObject() as RenderRepaintBoundary?;
        if (boundary != null) {
          ui.Image image = await boundary.toImage(pixelRatio: 3);
          ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
          if (byteData != null) {
            images.add(byteData.buffer.asUint8List());
          }
        }
      }
      for (var imageBytes in images) {
        _pdfFile.addPage(
          pw.Page(
            pageFormat: PdfPageFormat.a4,
            margin: const pw.EdgeInsets.all(0),
            build: (pw.Context context) {
              return pw.Center(
                child: pw.Image(pw.MemoryImage(imageBytes)),
              );
            },
          ),
        );
      }

      if (kDebugMode) print('✅ PDF Generated');
      state = AsyncValue.data(_pdfFile);
      _pdfFile.save();
      await showPrintedPdf();
    } catch (e) {
      if (kDebugMode) print('❌ Error: $e');
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> showPrintedPdf() async {
    if (state.hasValue) {
      await Printing.layoutPdf(onLayout: (format) async => _pdfFile.save());
    }
  }
}
