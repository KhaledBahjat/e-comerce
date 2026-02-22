import 'dart:convert';

import 'package:e_comerce/models/proudct_model.dart';
import 'package:http/http.dart' as http;

class AllProudctService {
  Future<List<ProudctModel>> getAllProducts() async {
    http.Response respresponse = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    List<dynamic> jsonList = jsonDecode(respresponse.body);
    // List<ProudctModel> proudctList = jsonList
    //     .map((proudct) => ProudctModel.fromjson(proudct))
    //     .toList();
    List<ProudctModel> proudctList = [];
    for (var proudct in jsonList) {
      proudctList.add(ProudctModel.fromjson(proudct));
    }
    return proudctList;
  }
}
