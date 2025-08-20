// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/models/report_sale_by_group_savetime_model.dart';
import 'package:intl/intl.dart';

import '../../models/branch_model_report_sale_by_group_savetime.dart';
import '../../models/product_model_report_sale_by_group_savetime.dart';

class ReportSaleByGroupSavetimeApi {
  final Ref ref;
  ReportSaleByGroupSavetimeApi({required this.ref});
  final String _detail = 'report_sale_by_group_savetime';

  Future<List<BranchModelReportSaleByGroupSavetime>> get(Map<String, dynamic> body) async {
    print(jsonEncode(body));
    print("Get ${DateFormat('HH:mm:ss ').format(DateTime.now())}");
    Response<dynamic> response = await ref.read(apiClientProvider).post(_detail, data: body);
    print("response ${DateFormat('HH:mm:ss ').format(DateTime.now())}");
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    print('dataModel: ${response.data.map((e) => e['master_branch_id']).toList()}');
    print("Map Data ${DateFormat('HH:mm:ss ').format(DateTime.now())}");
    List<ReportSaleByGroupSavetimeModel> dataModel = data.map((e) => ReportSaleByGroupSavetimeModel.fromJson(e)).toList();
    print("Map Model ${DateFormat('HH:mm:ss ').format(DateTime.now())}");
    print('dataModel: ${dataModel.map((e) => e.branchId).toList()}');
    // Map ข้อมูล จาก id ของ สาขา แล้วเพิ่มข้อมูลใน listProduct
    Map<String, BranchModelReportSaleByGroupSavetime> branchMap = {};
    for (ReportSaleByGroupSavetimeModel item in dataModel) {
      String branchId = item.branchId ?? '0';
      String branchName = item.branchName ?? '';
      // print("branch Id :${branchId}");
      // Create or get existing branch
      if (!branchMap.containsKey(branchId)) {
        branchMap[branchId] = BranchModelReportSaleByGroupSavetime(branchId: branchId, branchName: branchName, listProduct: []);
      }

      // Create product from the data
      ProductModelReportSaleByGroupSavetime product = ProductModelReportSaleByGroupSavetime(
        productGroupName: item.productGroupName ?? '',
        productName: item.productName ?? '',
        saledtQty: item.saledtQty ?? '0',
        saledtSaleprice: item.saledtSaleprice ?? '0',
        productCost: item.productCost ?? '0',
        saledtNetamnt: item.saledtNetamnt ?? '0',
        saledtCost: item.saledtCost ?? '0',
        branchId: item.branchId ?? '0',
        productGroupId: item.productGroupId ?? '0',
        productId: item.productId ?? '0',
      );

      // Add product to branch
      List<ProductModelReportSaleByGroupSavetime> currentProducts = List.from(branchMap[branchId]!.listProduct);
      currentProducts.add(product);
      branchMap[branchId] = branchMap[branchId]!.copyWith(listProduct: currentProducts);
    }

    List<BranchModelReportSaleByGroupSavetime> mapData = branchMap.values.toList();
    print('mapData: ${mapData.length}');
    return mapData;
  }
}

final apiReportSaleByGroupSavetime = Provider<ReportSaleByGroupSavetimeApi>((ref) => ReportSaleByGroupSavetimeApi(ref: ref));
