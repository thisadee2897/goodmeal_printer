import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:printing/printing.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../controllers/providers/document_quotation_dt.dart';

class QuotationScreen extends ConsumerWidget {
  const QuotationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Uint8List? filePdf = ref.watch(filePdfQuotationViewProvider);
    final hd = ref.watch(documentPaymentProvider);
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Quotation',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          FilledButton.icon(
            onPressed: () async {
              var pdfFile = ref.read(filePdfQuotationProvider);
              await Printing.layoutPdf(onLayout: (format) async => pdfFile.save());
            },
            label: const Text('Print'),
            icon: const Icon(Icons.print),
          ),
          const Gap(20),
        ],
      ),
      body: hd.when(
        loading: () => load(),
        error: (e, s) => Center(child: Text('error: $e')),
        data: (data) {
          return filePdf == null
              ? Container()
              : SfPdfViewerTheme(
                  data: const SfPdfViewerThemeData(backgroundColor: Colors.black87),
                  child: Center(
                    child: SizedBox(
                      width: context.screenWidth > context.screenHeight ? context.screenHeight : context.screenWidth,
                      child: SfPdfViewer.memory(
                        filePdf,
                        canShowPaginationDialog: false,
                        pageSpacing: 10,
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }

  Center load() => const Center(child: CircularProgressIndicator());
}
