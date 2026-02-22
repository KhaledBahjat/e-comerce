import 'dart:convert';

import 'package:e_comerce/models/proudct_model.dart';
import 'package:http/http.dart' as http;

class AllProudctService {
  Future<List<ProudctModel>> getAllProducts() async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      // List<ProudctModel> proudctList = jsonList
      //     .map((proudct) => ProudctModel.fromjson(proudct))
      //     .toList();
      List<ProudctModel> proudctList = [];
      for (var proudct in jsonList) {
        proudctList.add(ProudctModel.fromjson(proudct));
      }
      return proudctList;
    } else {
      throw Exception('Failed to load all products ${response.statusCode}');
    }
  }
}
