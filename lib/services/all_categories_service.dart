import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    List<dynamic> categories = jsonDecode(response.body);
    return categories;
  }
}
