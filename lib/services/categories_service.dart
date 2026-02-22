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
    List<dynamic> jsonList = jsonDecode(response.body);

    List<ProudctModel> proudctList = jsonList
        .map((proudct) => ProudctModel.fromjson(proudct))
        .toList();
    return proudctList;
  }
}
