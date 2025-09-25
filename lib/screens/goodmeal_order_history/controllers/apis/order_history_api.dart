import 'package:goodmeal_printer/apps/app_exports.dart';
import 'package:goodmeal_printer/models/salehd_all_preview_model.dart';

class OrderHistoriesApi {
  final Ref ref;
  OrderHistoriesApi({required this.ref});
  final String _path = 'get_salehd_all_preview';

  Future<List<SalehdAllPreviewModel>> get(Map<String, dynamic> body) async {
    Response<dynamic> response = await ref.read(apiClientProvider).post(_path, data: body);
    List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(response.data);
    return data.map((e) => SalehdAllPreviewModel.fromJson(e)).toList();
  }
}

final apiOrderHistories = Provider<OrderHistoriesApi>((ref) => OrderHistoriesApi(ref: ref));
