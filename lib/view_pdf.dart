// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:goodmeal_printer/screens/payment/controllers/providers/document_payment_dt.dart';
// import 'package:goodmeal_printer/data/purchaseorder_dt_data.dart';
// import 'package:number_to_words_english/number_to_words_english.dart';

// class PDFScreen extends ConsumerStatefulWidget {
//   const PDFScreen({super.key});

//   @override
//   ConsumerState<PDFScreen> createState() => _PDFScreenState();
// }

// class _PDFScreenState extends ConsumerState<PDFScreen> {
//   final FocusNode _focusNode = FocusNode();
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       await ref.read(purchaseorderDTProvider.notifier).read();
//       await ref.read(purchaseorderDTData.notifier).printPdf();
//     });
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _focusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return KeyboardListener(
//       focusNode: _focusNode,
//       onKeyEvent: (KeyEvent event) {
//         if (event.logicalKey == LogicalKeyboardKey.keyP) {
//           ref.read(purchaseorderDTData.notifier).printPdf();
//         }
//       },
//       autofocus: true,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Table Viewer'),
//         ),
//         body: Center(
//           child: Container(
//             color: Colors.white,
//             width: 1200,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(NumberToWordsEnglish.convert(55555)),
//                 ElevatedButton(
//                   onPressed: () async {
//                     await ref.read(purchaseorderDTData.notifier).printPdf();
//                   },
//                   child: const Text('Print Invoice'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
