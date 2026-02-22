import 'package:e_comerce/helper/api.dart';
import 'package:e_comerce/models/proudct_model.dart';

class AllProudctService {
  Future<List<ProudctModel>> getAllProducts() async {
    List<dynamic> response = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );
    List<ProudctModel> proudctList = response
        .map((proudct) => ProudctModel.fromjson(proudct))
        .toList();
    return proudctList;
  }
}
