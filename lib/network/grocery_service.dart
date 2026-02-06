import 'package:dio/dio.dart';
import 'package:nectar_app/network/grocery_model.dart';

class GroceryService {
  final Dio _dio = Dio();

  Future<List<GroceryItem>> fetchNectarGroceries() async {
    try {
      final response = await _dio.get(
        'https://dummyjson.com/products/category/groceries',
      );

      List<dynamic> rawList = response.data['products'];

      return rawList.map((item) => GroceryItem.fromJson(item)).toList();
    } catch (e) {
      throw Exception("Dio couldn't reach the server $e");
    }
  }
}
