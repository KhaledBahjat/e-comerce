class ProudctModel {
  final String id;
  final String price;
  final String title;
  final String description;
  final String imageUrl;
  final RatingModel rating;

  ProudctModel({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.rating,
  });
  factory ProudctModel.fromjson(Map<String, dynamic> jsonData) {
    return ProudctModel(
      id: jsonData['id'],
      price: jsonData['price'],
      title: jsonData['title'],
      description: jsonData['description'],
      imageUrl: jsonData['image'],
      rating: RatingModel.fromjson(jsonData['rating']),
    );
  }
}

class RatingModel {
  final String rate;
  final String count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromjson(Map<String, dynamic> jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
