import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PDFGeneratorBill {
  Future<pw.Page> generate({required DocumentBillModel hd, required List<DocumentBillDTModel> dt, required CompanyModel company}) async {
    Uint8List? imageBytesFormNetwork = await getImageBytes(company.companyLogo);
    final ByteData data = await rootBundle.load('assets/fonts/THSarabun.ttf');
    final font = pw.Font.ttf(data.buffer.asByteData());
    final ByteData dataBold = await rootBundle.load('assets/fonts/THSarabun-Bold.ttf');
    final fontBold = pw.Font.ttf(dataBold.buffer.asByteData());
    var textStyleNormal = pw.TextStyle(
      fontSize: 14,
      fontWeight: pw.FontWeight.normal,
      color: PdfColors.black,
      font: font,
    );
    var textStyleBold = pw.TextStyle(
      fontSize: 14,
      fontWeight: pw.FontWeight.bold,
      color: PdfColors.black,
      font: fontBold,
    );
    return pw.Page(
      pageFormat: PdfPageFormat.a4,
      margin: const pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      theme: pw.ThemeData.withFont(base: font),
      build: (pw.Context context) {
        return pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            // เพิ่ม Header
            pw.Padding(
              padding: const pw.EdgeInsets.only(left: 16, right: 16, top: 20),
              child: pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                mainAxisSize: pw.MainAxisSize.max,
                children: [
                  pw.Container(
                    width: 250,
                    height: 50,
                    child: (imageBytesFormNetwork != null)
                        ? pw.Image(
                            alignment: pw.Alignment.topLeft,
                            fit: pw.BoxFit.fitHeight,
                            pw.MemoryImage(imageBytesFormNetwork),
                            width: 250,
                            height: 50,
                          )
                        : pw.Container(),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(right: 10),
                    child: pw.SizedBox(
                      height: 90,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          pw.Text('ใบวางบิล / Billing Note', style: textStyleBold.copyWith(fontSize: 20)),
                          pw.Text("${company.companyName}", style: textStyleNormal),
                          pw.Text("${company.companyAddress}${company.addrDistrictName}", style: textStyleNormal),
                          pw.Text("${company.addrPrefectureName} ${company.addrProvinceName} ${company.addrPostcodeCode}", style: textStyleNormal),
                          pw.Text("${company.companyTel}", style: textStyleNormal),
                          pw.Text("เลขประจำตัวผู้เสียภาษี: ${company.companyTaxid}", style: textStyleNormal),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Container(
              padding: const pw.EdgeInsets.all(10),
              margin: const pw.EdgeInsets.only(left: 20, right: 20),
              width: 550,
              height: 568,
              decoration: pw.BoxDecoration(
                color: PdfColor.fromHex("#FFFFFF"),
                border: pw.Border.all(color: PdfColor.fromHex("#D7DAE0"), width: 0.5),
                borderRadius: pw.BorderRadius.circular(12),
              ),
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Row(
                    children: [
                      pw.Expanded(
                        flex: 2,
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('Billed to', style: textStyleNormal),
                            pw.Text(hd.contactName.toString(), style: textStyleBold),
                            pw.Text(hd.contactAddress.toString(), style: textStyleNormal),
                            pw.Text("เบอร์ติดต่อ : ${hd.contactTel}", style: textStyleNormal),
                            pw.Text('เลขประจำตัวผู้เสียภาษี ', style: textStyleNormal),
                            pw.Text(hd.contactTaxid.toString(), style: textStyleBold),
                          ],
                        ),
                      ),
                      pw.Expanded(
                        flex: 1,
                        child: pw.Padding(
                          padding: const pw.EdgeInsets.only(left: 8.0),
                          child: pw.Column(
                            mainAxisSize: pw.MainAxisSize.max,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.SizedBox(
                                height: 32,
                                width: double.infinity,
                                child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.center,
                                  children: [
                                    pw.Text('เลขที่', style: textStyleNormal),
                                    pw.Text(hd.billHdDocuno.toString(), style: textStyleBold),
                                  ],
                                ),
                              ),
                              pw.SizedBox(
                                height: 32,
                                width: double.infinity,
                                child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.center,
                                  children: [
                                    pw.Text('วันที่', style: textStyleNormal),
                                    pw.Text(hd.billHdDocudate.dateTHFormApi, style: textStyleBold),
                                  ],
                                ),
                              ),
                              pw.SizedBox(
                                height: 32,
                                width: double.infinity,
                                child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.center,
                                  children: [
                                    pw.Text('วันครบกำหนดชำระ', style: textStyleNormal),
                                    pw.Text(hd.billHdDueDate.dateTHFormApi, style: textStyleBold),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  pw.SizedBox(height: 10),
                  pw.Container(
                    padding: const pw.EdgeInsets.only(right: 8),
                    height: 28,
                    width: 531,
                    decoration: pw.BoxDecoration(
                      color: PdfColor.fromHex("#ECF7FF"),
                      borderRadius: pw.BorderRadius.circular(3),
                    ),
                    child: pw.Row(
                      children: [
                        pw.SizedBox(
                          width: 30,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'ลำดับ',
                              textAlign: pw.TextAlign.center,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.Expanded(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'เลขที่เอกสาร',
                              textAlign: pw.TextAlign.start,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 60,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'วันที่เอกสาร',
                              textAlign: pw.TextAlign.start,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          width: 100,
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 2, right: 2),
                            child: pw.Text(
                              'จำนวนเงิน',
                              textAlign: pw.TextAlign.end,
                              style: textStyleNormal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Expanded(
                    child: pw.ListView.builder(
                      itemCount: dt.length,
                      itemBuilder: (context, index) {
                        return pw.Center(
                          child: pw.Container(
                            padding: const pw.EdgeInsets.only(right: 8),
                            height: 22,
                            color: index.isOdd ? PdfColor.fromHex("#F9F8F9") : PdfColor.fromHex("#FFFFFF"),
                            width: 531,
                            child: pw.Row(
                              children: [
                                pw.SizedBox(
                                  width: 30,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      dt[index].billDtListno.digits(0),
                                      textAlign: pw.TextAlign.center,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                                pw.Expanded(
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      maxLines: 1,
                                      overflow: pw.TextOverflow.visible,
                                      "${dt[index].saleHdDocuno}",
                                      textAlign: pw.TextAlign.start,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                                pw.SizedBox(
                                  width: 60,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      maxLines: 1,
                                      overflow: pw.TextOverflow.visible,
                                      dt[index].saleHdDocudate.dateTHFormApi,
                                      textAlign: pw.TextAlign.start,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                                pw.SizedBox(
                                  width: 100,
                                  child: pw.Padding(
                                    padding: const pw.EdgeInsets.only(left: 2, right: 2),
                                    child: pw.Text(
                                      num.parse(dt[index].billDtAmount ?? '0').digits(2),
                                      textAlign: pw.TextAlign.end,
                                      style: textStyleNormal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  pw.Center(
                    child: pw.SizedBox(
                      width: 531,
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Divider(color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          pw.Row(
                            children: [
                              pw.Expanded(flex: 1, child: pw.Container()),
                              pw.Expanded(
                                flex: 1,
                                child: pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    pw.Text('Total', style: textStyleBold),
                                    pw.Padding(
                                      padding: const pw.EdgeInsets.only(right: 10),
                                      child: pw.Text(
                                        num.parse(hd.billHdAmount ?? '0').digits(2),
                                        style: textStyleBold.copyWith(color: PdfColor.fromHex("#0064B0")),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          pw.Divider(color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text('จำนวนเงิน (ตัวอักษร)', style: textStyleNormal),
                                  pw.Text(NumberToThaiWords.convert(double.parse(hd.billHdAmount ?? '0')), style: textStyleBold),
                                ],
                              ),
                              pw.Padding(
                                padding: const pw.EdgeInsets.only(right: 10),
                                child: pw.Column(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                                  children: [
                                    pw.Text('รวมทั้งสิ้น', style: textStyleNormal),
                                    pw.Text(double.parse(hd.billHdAmount ?? '0').digits(2), style: textStyleBold),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // pw.Divider(color: PdfColor.fromHex("#D7DAE0"), thickness: 0.5),
                          // pw.Row(
                          //   crossAxisAlignment: pw.CrossAxisAlignment.start,
                          //   children: [
                          //     pw.Expanded(
                          //       flex: 1,
                          //       child: pw.Padding(
                          //         padding: const pw.EdgeInsets.only(right: 30),
                          //         child: pw.Column(
                          //           children: [
                          //             pw.Row(
                          //               mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          //               children: [
                          //                 pw.Text('ชำระโดย', style: textStyleNormal),
                          //                 pw.Padding(
                          //                   padding: const pw.EdgeInsets.only(right: 10),
                          //                   child: pw.Text("จำนวน", style: textStyleNormal),
                          //                 ),
                          //               ],
                          //             ),
                          //             pw.Row(
                          //               mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          //               children: [
                          //                 pw.Row(
                          //                   children: [
                          //                     pw.SvgImage(svg: num.parse(hd.billHdCashAmount ?? '0') > 0 ? svgTrue : svgFasle),
                          //                     pw.SizedBox(width: 5),
                          //                     pw.Text('เงินสด', style: textStyleBold),
                          //                   ],
                          //                 ),
                          //                 pw.Padding(
                          //                   padding: const pw.EdgeInsets.only(right: 10),
                          //                   child: pw.Text(
                          //                     num.parse(hd.billHdCashAmount ?? '0').digits(2),
                          //                     style: textStyleBold,
                          //                   ),
                          //                 ),
                          //               ],
                          //             ),
                          //             pw.Row(
                          //               mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          //               children: [
                          //                 pw.Row(
                          //                   children: [
                          //                     pw.SvgImage(svg: num.parse(hd.billHdTransferAmount ?? '0') > 0 ? svgTrue : svgFasle),
                          //                     pw.SizedBox(width: 5),
                          //                     pw.Text('เงินโอน', style: textStyleBold),
                          //                   ],
                          //                 ),
                          //                 pw.Padding(
                          //                   padding: const pw.EdgeInsets.only(right: 10),
                          //                   child: pw.Text(num.parse(hd.billHdTransferAmount ?? '0').digits(2), style: textStyleBold),
                          //                 ),
                          //               ],
                          //             ),
                          //             pw.Row(
                          //               mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          //               children: [
                          //                 pw.Row(
                          //                   children: [
                          //                     pw.SvgImage(svg: num.parse(hd.billHdCreditAmount ?? '0') > 0 ? svgTrue : svgFasle),
                          //                     pw.SizedBox(width: 5),
                          //                     pw.Text('บัตรเครดิต', style: textStyleBold),
                          //                   ],
                          //                 ),
                          //                 pw.Padding(
                          //                   padding: const pw.EdgeInsets.only(right: 10),
                          //                   child: pw.Text(num.parse(hd.billHdCreditAmount ?? '0').digits(2), style: textStyleBold),
                          //                 ),
                          //               ],
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //     pw.Expanded(
                          //       flex: 1,
                          //       child: pw.Container(),
                          //     ),
                          //   ],
                          // ),
                          // pw.SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.SizedBox(
              width: 149,
              height: 80,
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.center,
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Text("ผู้วางบิล", style: textStyleNormal),
                  pw.SizedBox(height: 10),
                  pw.Text('...........................................................', style: textStyleNormal),
                  pw.Text("(...........................................................)", style: textStyleNormal),
                  pw.Text("วันที่.....................................................", style: textStyleNormal),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Padding(
              padding: const pw.EdgeInsets.only(right: 20),
              child: pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
                  pw.SizedBox(
                    width: 50,
                    child: pw.Text(textAlign: pw.TextAlign.right, 'หมายเหตุ : ', style: textStyleNormal),
                  ),
                  pw.Text("${hd.billHdRemark}", style: textStyleNormal),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
