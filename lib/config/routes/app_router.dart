// ignore_for_file: unused_element
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/screens/goodmeal_full_tax_invoice/controllers/providers/print_full_tax_invoice.dart';
import 'package:goodmeal_printer/screens/goodmeal_full_tax_invoice/views/report_full_tax_invoice_screen.dart';
import 'package:goodmeal_printer/screens/goodmeal_report_hq_vat_postt_sale/controllers/providers/get_company_data.dart';
import 'package:goodmeal_printer/screens/goodmeal_report_hq_vat_postt_sale/controllers/providers/report_hq_vat_postt_sale.dart';
import 'package:goodmeal_printer/screens/goodmeal_report_hq_vat_postt_sale/views/report_hq_vat_postt_sale_screen.dart';
import 'package:goodmeal_printer/screens/goodmeal_simplified_tax_invoice/controllers/providers/print_simplified_tax_invoice.dart';
import 'package:goodmeal_printer/screens/goodmeal_simplified_tax_invoice/views/report_simplified_tax_invoice_screen.dart';
import 'package:goodmeal_printer/screens/report_sale_by_group_savetime/controllers/providers/report_sale_by_group_savetime.dart';
import 'package:goodmeal_printer/screens/report_sale_by_group_savetime/views/report_simplified_tax_invoice_screen.dart';
import 'route_config.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    redirect: (context, state) {
      final Uri uri = state.uri;
      Map<String, String> queryParameters = uri.queryParameters;
      String server = queryParameters['c2VydmVyVXJsUmVxdWVzdA'] ?? '';
      String token = queryParameters['dG9rZW5SZXF1ZXN0'] ?? '';
      String base64DeCodeServer = idFormBase64(id: server);
      String base64DeCodeToken = idFormBase64(id: token);
      // if (kDebugMode) print('server: $base64DeCodeServer');
      // if (kDebugMode) print('token: $base64DeCodeToken');
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(serverUrlRequest.notifier).state = base64DeCodeServer;
        ref.read(tokenRequest.notifier).state = base64DeCodeToken;
      });
      return null;
      // if (kDebugMode) print(jsonEncode(queryParameters));
    },
    onException: (context, state, router) => router.go(Routes.error),
    initialLocation: Routes.initPath,
    navigatorKey: _rootNavigatorKey,
    // errorPageBuilder: (context, state) => const NoTransitionPage(child: ErrorScreen()),
    routes: [
      GoRoute(path: Routes.error, pageBuilder: (context, state) => const NoTransitionPage(child: ErrorScreen())),
      GoRoute(path: Routes.initPath, pageBuilder: (context, state) => const NoTransitionPage(child: InitScreeen())),
      GoRoute(
        path: Routes.reportHQVatPosttSaleScreen,
        redirect: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            try {
              final companyBase64Id = state.uri.queryParameters['Y29tcGFueV9pZA'];
              // final masterBranchIdBase64 = state.uri.queryParameters['bWFzdGVyX2JyYW5jaF9pZA'];
              List<String> masterBranchBase64List = state.uri.queryParametersAll['bWFzdGVyX2JyYW5jaF9pZA'] ?? [];
              if (kDebugMode) print('masterBranchBase64List: $masterBranchBase64List');
              final startDateBase64 = state.uri.queryParameters['c3RhcnRfZGF0ZQ'];
              final endDateBase64 = state.uri.queryParameters['ZW5kX2RhdGU'];
              List<int> masterBranchIds =
                  masterBranchBase64List
                      .map((b64) => int.tryParse(utf8.decode(base64Decode(b64))))
                      .whereType<int>() // กรองค่า null ออก
                      .toList();
              // if (kDebugMode) print('masterBranchIdBase64: $masterBranchIdBase64');
              if (kDebugMode) print('companyBase64Id: $companyBase64Id');
              if (kDebugMode) print('startDateBase64: $startDateBase64');
              if (kDebugMode) print('endDateBase64: $endDateBase64');
              var companyId = idFormBase64(id: companyBase64Id);
              // var masterBranchId = idFormBase64(id: masterBranchIdBase64);
              var startDate = idFormBase64(id: startDateBase64);
              var endDate = idFormBase64(id: endDateBase64);
              if (kDebugMode) print('companyId: $companyId');
              if (kDebugMode) print('masterBranchIds: $masterBranchIds');
              if (kDebugMode) print('startDate: $startDate');
              if (kDebugMode) print('endDate: $endDate');
              ref.read(startDateProvider.notifier).state = DateTime.parse(startDate);
              ref.read(endDateProvider.notifier).state = DateTime.parse(endDate);
              await ref.read(hdReportHQVatPosttSaleProvider.notifier).get(id: companyId);
              await ref
                  .read(detailReportHQVatPosttSaleProvider.notifier)
                  .get(body: {"master_branch_id": masterBranchIds.join(','), "start_date": startDate, "end_date": endDate});
            } catch (e) {
              ref.read(routerHelperProvider).goPath('/error');
              if (kDebugMode) print('error: $e');
              return;
            }
          });
          return;
        },
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: ReportHQVatPosttSaleScreen());
        },
      ),
      GoRoute(
        path: Routes.simplifiedTaxInvoiceScreen,
        redirect: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            try {
              final companyBase64Id = state.uri.queryParameters['Y29tcGFueV9pZA'];
              if (kDebugMode) print('companyBase64Id: $companyBase64Id');
              List<String> salehdIdBase64List = state.uri.queryParametersAll['c2FsZWhkX2lk'] ?? [];
              List<int> salehdIdIds =
                  salehdIdBase64List
                      .map((b64) => int.tryParse(utf8.decode(base64Decode(b64))))
                      .whereType<int>() // กรองค่า null ออก
                      .toList();
              var companyId = idFormBase64(id: companyBase64Id);
              // print(salehdIdIds.join(','));
              // print('companyId: $companyId');
              await ref.read(simplifiedTaxInvoiceProvider.notifier).get(body: {"salehd_id": salehdIdIds.join(','), "company": companyId});
            } catch (e) {
              ref.read(routerHelperProvider).goPath('/error');
              if (kDebugMode) print('error: $e');
              return;
            }
          });
          return;
        },
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: SimplifiedTaxInvoiceScreen());
        },
      ),
      GoRoute(
        path: Routes.fullTaxInvoiceScreen,
        redirect: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            try {
              final companyBase64Id = state.uri.queryParameters['Y29tcGFueV9pZA'];
              final originalBase64 = state.uri.queryParameters['b3JpZ2luYWw'];
              final copyBase64 = state.uri.queryParameters['Y29weQ'];
              final simplified = state.uri.queryParameters['c2ltcGxpZmllZF9pbmNvaW5n'] == 'dHJ1ZQ==';
              List<String> salehdIdBase64List = state.uri.queryParametersAll['c2FsZWhkX2lk'] ?? [];
              List<int> salehdIdIds =
                  salehdIdBase64List
                      .map((b64) => int.tryParse(utf8.decode(base64Decode(b64))))
                      .whereType<int>() // กรองค่า null ออก
                      .toList();
              var companyId = idFormBase64(id: companyBase64Id);
              bool originalBool = bool.parse(idFormBase64(id: originalBase64));
              bool copyBool = bool.parse(idFormBase64(id: copyBase64));
              if (simplified) {
                await ref.read(simplifiedTaxInvoiceProvider.notifier).get(body: {"salehd_id": salehdIdIds.join(','), "company": companyId});
              }
              await ref
                  .read(fullTaxInvoiceProvider.notifier)
                  .get(body: {"original": originalBool, "copy": copyBool, "salehd_id": salehdIdIds.join(','), "company": companyId});
            } catch (e) {
              ref.read(routerHelperProvider).goPath('/error');
              if (kDebugMode) print('error: $e');
              return;
            }
          });
          return;
        },
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: FullTaxInvoiceScreen());
        },
      ),
      GoRoute(
        path: Routes.reportSaleByGroupSavetimeScreen,
        redirect: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            try {
                  // final companyBase64Id = state.uri.queryParameters['Y29tcGFueV9pZA'];
                  // if (kDebugMode) print('companyBase64Id: $companyBase64Id');
                  // List<String> salehdIdBase64List = state.uri.queryParametersAll['c2FsZWhkX2lk'] ?? [];
                  // List<int> salehdIdIds =
                  //     salehdIdBase64List
                  //         .map((b64) => int.tryParse(utf8.decode(base64Decode(b64))))
                  //         .whereType<int>() // กรองค่า null ออก
                  //         .toList();
                  // var companyId = idFormBase64(id: companyBase64Id);
              // print(salehdIdIds.join(','));
              // print('companyId: $companyId');
              await ref.read(reportSaleByGroupSavetimeProvider.notifier).get(body: {
                      "start_date":"20250801",
                      "end_date":"20250831",
                      "master_branch_id":[127, 128, 136, 137, 138, 139, 141, 142, 143],
                      "master_product_group_id" : [720, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 627, 626, 628, 629, 630, 631, 632, 651, 696, 700, 704, 705, 706, 707, 708, 709, 710, 711, 717, 718, 722, 721],
                      "type_view":2,// 
                      "start_time":" 00:00",
                      "end_time":"23:59"
                  });
            } catch (e) {
              ref.read(routerHelperProvider).goPath('/error');
              if (kDebugMode) print('error: $e');
              return;
            }
          });
          return;
        },
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: ReportSaleByGroupSavetimeScreen());
        },
      ),
    ],
  );
});
