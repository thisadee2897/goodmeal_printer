import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/models/check_balance_model.dart';
import 'package:goodmeal_printer/utils/extensions/date_time.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PDFGeneratorCheckBalance {
  Future<pw.Page> generate({required CheckBalanceModel dataBalance}) async {
    Uint8List? imageBytesFormNetwork = await getImageBytes(dataBalance.branchImage);
    final ByteData data = await rootBundle.load('assets/fonts/THSarabun.ttf');
    final font = pw.Font.ttf(data.buffer.asByteData());
    final ByteData dataBold = await rootBundle.load('assets/fonts/THSarabun-Bold.ttf');
    final fontBold = pw.Font.ttf(dataBold.buffer.asByteData());
    var textStyleNormal = pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.normal, color: PdfColors.black, font: font);
    var textStyleBold = pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.bold, color: PdfColors.black, font: fontBold);
    return pw.Page(
      pageFormat: PdfPageFormat.a4.portrait,
      margin: const pw.EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
      orientation: pw.PageOrientation.portrait,
      theme: pw.ThemeData.withFont(base: font),
      build: (pw.Context context) {
        return pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          mainAxisSize: pw.MainAxisSize.max,
          children: [
            pw.Center(
              child: pw.Container(
                margin: const pw.EdgeInsets.only(left: 14, right: 14),
                padding: const pw.EdgeInsets.all(20),
                width: 400,
                height: 300,
                decoration: pw.BoxDecoration(
                  // color: PdfColors.amber,
                  borderRadius: pw.BorderRadius.circular(12),
                  border: pw.Border.all(
                    //#82b84f
                    color: PdfColor.fromHex('#82b84f'),
                    width: 2,
                  ),
                ),
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Row(
                      children: [
                        // image
                        if (imageBytesFormNetwork != null) pw.SizedBox(height: 70, child: pw.Image(pw.MemoryImage(imageBytesFormNetwork))),
                        if (imageBytesFormNetwork != null) pw.SizedBox(width: 10),
                        // branchName
                        pw.Expanded(child: pw.Text(dataBalance.branchName, style: textStyleBold)),
                      ],
                    ),
                    pw.SizedBox(height: 20),
                    pw.Text('รหัสส : ${dataBalance.memberCode}', style: textStyleNormal),
                    pw.Text('ชื่อ : ${dataBalance.memberName}', style: textStyleNormal),
                    pw.SizedBox(height: 20),
                    pw.Row(
                      children: [
                        pw.Expanded(flex: 2, child: pw.Text('เป็นสามชิกเมื่อ', style: textStyleNormal)),
                        pw.Expanded(flex: 1, child: pw.Text(DateTime.parse(dataBalance.startDate!).formatThaiDate(), style: textStyleNormal)),
                      ],
                    ),
                    pw.Row(
                      children: [
                        pw.Expanded(flex: 2, child: pw.Text('วันหมดอายุ', style: textStyleNormal)),
                        pw.Expanded(flex: 1, child: pw.Text(DateTime.parse(dataBalance.expireDate!).formatThaiDate(), style: textStyleNormal)),
                      ],
                    ),
                    pw.Row(
                      children: [
                        pw.Expanded(flex: 2, child: pw.Text('จำนวนเงินคงเหลือ', style: textStyleNormal)),
                        pw.Expanded(flex: 1, child: pw.Text("${dataBalance.balance.digits(2)} ${dataBalance.currency}", style: textStyleNormal)),
                      ],
                    ),
                    pw.Row(
                      children: [
                        pw.Expanded(flex: 2, child: pw.Text('วันนี้ใช้วงเงินได้', style: textStyleNormal)),
                        pw.Expanded(flex: 1, child: pw.Text("${dataBalance.todayLimit.digits(2)} ${dataBalance.currency}", style: textStyleNormal)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
