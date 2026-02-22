import 'package:e_comerce/helper/api.dart';
import 'package:e_comerce/models/proudct_model.dart';

class AddProudctService {
  Future<ProudctModel> addProudct({
    required String productName,
    required dynamic productPrice,
    required String? productDesc,
    required String productCategory,
    required String? productImage,
  }) async {
    Map<String, dynamic> result = await Api().add(
      url: 'https://fakestoreapi.com/products',
      productName: productName,
      productPrice: productPrice,
      productDesc: productDesc,
      productCategory: productCategory,
      productImage: productImage,
    );
    Map<String, dynamic> proudct = result;
    return ProudctModel.fromjson(proudct);
  }
}
