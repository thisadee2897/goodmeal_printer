import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../models/branch_model_report_sale_by_group_savetime.dart';
import '../../models/product_model_report_sale_by_group_savetime.dart';

class PDFGeneratorReportSaleByGroupSavetime {
  Future<pw.Page> generate({
    required BranchModelReportSaleByGroupSavetime branch,
    required List<ProductModelReportSaleByGroupSavetime> products,
    required DateTime startDate,
    required DateTime endDate,
    bool showProduct = false,
  }) async {
    // Uint8List? imageBytesFormNetwork = await getImageBytes(branch.header!.companyLogoImageNetwork);
    final ByteData data = await rootBundle.load('assets/fonts/THSarabun.ttf');
    final font = pw.Font.ttf(data.buffer.asByteData());
    final ByteData dataBold = await rootBundle.load('assets/fonts/THSarabun-Bold.ttf');
    final fontBold = pw.Font.ttf(dataBold.buffer.asByteData());
    var textStyleNormal = pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.normal, color: PdfColors.black, font: font);
    var textStyleBold = pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold, color: PdfColors.black, font: fontBold);
    return pw.Page(
      pageFormat: PdfPageFormat.a4.portrait,
      margin: const pw.EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
      orientation: pw.PageOrientation.portrait,
      theme: pw.ThemeData.withFont(base: font),
      build: (pw.Context context) {
        return pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Container(
              margin: const pw.EdgeInsets.only(left: 14, right: 14),
              width: double.infinity,
              height: 800,
              decoration: pw.BoxDecoration(
                // color: PdfColors.amber,
                borderRadius: pw.BorderRadius.circular(12),
              ),
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Text("รายงานการสั่งอาหารตามกลุ่มเวลา", style: textStyleBold),
                  pw.Text(
                    'ข้อมูลจากวันที่ ${DateFormat('dd/MM/yyyy').format(startDate)} ถึง ${DateFormat('dd/MM/yyyy').format(endDate)}',
                    style: textStyleBold,
                  ),
                  pw.SizedBox(
                    width: double.infinity,
                    child: pw.Text(
                      "พิมพ์วันที่ ${DateFormat('dd/MM/yyyy').format(DateTime.now())} เวลา ${DateFormat('HH:mm:ss').format(DateTime.now())}",
                      style: textStyleBold,
                    ),
                  ),
                  pw.SizedBox(width: double.infinity, child: pw.Text("สาขา : ${branch.branchName}", style: textStyleBold)),
                  // if (dt.details!.isNotEmpty)
                  pw.Table(
                    // border: pw.TableBorder.all(
                    //   color: PdfColor.fromHex("#000000"),
                    //   width: 0.5,
                    //   style: pw.BorderStyle.solid,
                    // ),
                    children: [
                      pw.TableRow(
                        decoration: pw.BoxDecoration(color: PdfColor.fromHex('#A9D08E')),
                        children: [
                          pw.Container(
                            height: 18,
                            width: double.infinity,
                            decoration: const pw.BoxDecoration(
                              border: pw.Border(
                                top: pw.BorderSide(color: PdfColors.black, width: 2),
                                bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                              ),
                            ),
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(left: 2, right: 2),
                              child: pw.Align(
                                alignment: pw.Alignment.centerLeft,
                                child: pw.Padding(padding: const pw.EdgeInsets.only(left: 2, right: 2), child: pw.Text('กลุ่มอาหาร', style: textStyleBold)),
                              ),
                            ),
                          ),
                          if (showProduct)
                            pw.Container(
                              height: 18,
                              decoration: const pw.BoxDecoration(
                                border: pw.Border(
                                  top: pw.BorderSide(color: PdfColors.black, width: 2),
                                  bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                                ),
                              ),
                              width: double.infinity,
                              child: pw.Align(
                                alignment: pw.Alignment.centerLeft,
                                child: pw.Padding(padding: const pw.EdgeInsets.only(left: 2, right: 2), child: pw.Text('รายการอาาหาร', style: textStyleBold)),
                              ),
                            ),
                          pw.Container(
                            height: 18,
                            width: 50,
                            decoration: const pw.BoxDecoration(
                              border: pw.Border(
                                top: pw.BorderSide(color: PdfColors.black, width: 2),
                                bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                              ),
                            ),
                            child: pw.Align(
                              alignment: pw.Alignment.centerRight,
                              child: pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                child: pw.Text('จำนวน', textAlign: pw.TextAlign.end, style: textStyleBold),
                              ),
                            ),
                          ),
                          pw.Container(
                            height: 18,
                            width: 50,
                            decoration: const pw.BoxDecoration(
                              border: pw.Border(
                                top: pw.BorderSide(color: PdfColors.black, width: 2),
                                bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                              ),
                            ),
                            child: pw.Align(
                              alignment: pw.Alignment.centerRight,
                              child: pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                child: pw.Text('ราคา', textAlign: pw.TextAlign.end, style: textStyleBold),
                              ),
                            ),
                          ),
                          pw.Container(
                            height: 18,
                            // width: 50,
                            decoration: const pw.BoxDecoration(
                              border: pw.Border(
                                top: pw.BorderSide(color: PdfColors.black, width: 2),
                                bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                              ),
                            ),
                            child: pw.Align(
                              alignment: pw.Alignment.centerRight,
                              child: pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                child: pw.Text('ราคาต้นทุนมาตรฐาน', textAlign: pw.TextAlign.center, style: textStyleBold),
                              ),
                            ),
                          ),
                          pw.Container(
                            height: 18,
                            width: 50,
                            decoration: const pw.BoxDecoration(
                              border: pw.Border(
                                top: pw.BorderSide(color: PdfColors.black, width: 2),
                                bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                              ),
                            ),
                            child: pw.Align(
                              alignment: pw.Alignment.centerRight,
                              child: pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                child: pw.Text('ยอดขาย', textAlign: pw.TextAlign.end, style: textStyleBold),
                              ),
                            ),
                          ),
                          pw.Container(
                            height: 18,
                            width: 50,
                            decoration: const pw.BoxDecoration(
                              border: pw.Border(
                                top: pw.BorderSide(color: PdfColors.black, width: 2),
                                bottom: pw.BorderSide(color: PdfColors.black, width: 0.5),
                              ),
                            ),
                            child: pw.Align(
                              alignment: pw.Alignment.centerRight,
                              child: pw.Padding(
                                padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                child: pw.Text('ต้นทุน', textAlign: pw.TextAlign.end, style: textStyleBold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Data Rows
                      ...List.generate(products.length, (index) {
                        var item = products[index];
                        return pw.TableRow(
                          decoration:
                              item.productGroupName.contains('รวมทั้งสิ้น')
                                  ? pw.BoxDecoration(
                                    color: PdfColor.fromHex('#A9D08E'),
                                    border: const pw.Border(
                                      top: pw.BorderSide(color: PdfColors.black, width: 0.5),
                                      bottom: pw.BorderSide(color: PdfColors.black, width: 1),
                                    ),
                                  )
                                  : pw.BoxDecoration(color: (showProduct && item.productId == '0') ? PdfColor.fromHex('#E1EFDA') : PdfColors.white),
                          children: [
                            pw.SizedBox(
                              height: 18,
                              child: pw.Align(
                                alignment: num.tryParse(item.productGroupName) != null ? pw.Alignment.center : pw.Alignment.centerLeft,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    item.productGroupName.toString(),
                                    //item.productGroupName ถ้าสามารถแปลงเป็นตัวเลขได้ ให้เป็น center
                                    textAlign: num.tryParse(item.productGroupName) != null ? pw.TextAlign.center : pw.TextAlign.start,
                                    style: item.productGroupName.contains('รวมทั้งสิ้น') ? textStyleBold : textStyleNormal,
                                  ),
                                ),
                              ),
                            ),
                            if (showProduct)
                              pw.SizedBox(
                                height: 18,
                                child: pw.Align(
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(item.productName, style: item.productGroupName.contains('รวมทั้งสิ้น') ? textStyleBold : textStyleNormal),
                                  ),
                                ),
                              ),
                            pw.SizedBox(
                              height: 18,
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    num.parse(item.saledtQty).digits(2),
                                    textAlign: pw.TextAlign.end,
                                    style: item.productGroupName.contains('รวมทั้งสิ้น') ? textStyleBold : textStyleNormal,
                                  ),
                                ),
                              ),
                            ),
                            pw.SizedBox(
                              height: 18,
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    num.parse(item.saledtSaleprice).digits(2),
                                    textAlign: pw.TextAlign.end,
                                    style: item.productGroupName.contains('รวมทั้งสิ้น') ? textStyleBold : textStyleNormal,
                                  ),
                                ),
                              ),
                            ),
                            pw.SizedBox(
                              height: 18,
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    num.parse(item.productCost).digits(2),
                                    textAlign: pw.TextAlign.end,
                                    style: item.productGroupName.contains('รวมทั้งสิ้น') ? textStyleBold : textStyleNormal,
                                  ),
                                ),
                              ),
                            ),
                            pw.SizedBox(
                              height: 18,
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    num.parse(item.productCost).digits(2),
                                    textAlign: pw.TextAlign.end,
                                    style: item.saledtNetamnt.contains('รวมทั้งสิ้น') ? textStyleBold : textStyleNormal,
                                  ),
                                ),
                              ),
                            ),
                            pw.SizedBox(
                              height: 18,
                              child: pw.Align(
                                alignment: pw.Alignment.centerRight,
                                child: pw.Padding(
                                  padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                  child: pw.Text(
                                    num.parse(item.productCost).digits(2),
                                    textAlign: pw.TextAlign.end,
                                    style: item.saledtCost.contains('รวมทั้งสิ้น') ? textStyleBold : textStyleNormal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                  // // Footer
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
