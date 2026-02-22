import 'dart:convert';

import 'package:e_comerce/models/proudct_model.dart';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<ProudctModel>> getProductsByCategory({
    required String categoryName,
  }) async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'),
    );
    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);

      List<ProudctModel> proudctList = jsonList
          .map((proudct) => ProudctModel.fromjson(proudct))
          .toList();
      return proudctList;
    }else {
      throw Exception('Failed to load products by category ${response.statusCode}');
    }
  }
}
