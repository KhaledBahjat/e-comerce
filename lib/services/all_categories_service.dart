import 'dart:convert';

import 'package:e_comerce/helper/api.dart';
import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> response = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );
    return response;
  }
}
