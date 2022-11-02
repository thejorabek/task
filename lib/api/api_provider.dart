import 'package:dio/dio.dart';
import 'package:task/api/api_client.dart';
import 'package:task/models/item_models.dart';


class ApiProvider {
  final ApiClient apiClient;

  ApiProvider({required this.apiClient});

  Future<List<ItemsModel>> getItems() async {
    Response response =
    await apiClient.dio.get("${apiClient.dio.options.baseUrl}/data");

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      List<ItemsModel> items = (response.data['data'] as List?)
          ?.map((items) => ItemsModel.fromJson(items))
          .toList() ??
          [];
      return items;
    } else {
      print("exeption");
      throw Exception();
    }
  }

}