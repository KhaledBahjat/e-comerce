import 'package:e_comerce/helper/api.dart';
import 'package:e_comerce/models/proudct_model.dart';

class CategoriesService {
  Future<List<ProudctModel>> getProductsByCategory({
    required String categoryName,
  }) async {
    List<dynamic> response = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );
    List<ProudctModel> proudctList = [];
    for (var proudct in response) {
      proudctList.add(ProudctModel.fromjson(proudct));
    }
    return proudctList;
  }
}
