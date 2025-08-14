class CategoryModel {
  final String title;
  final String? image;

  CategoryModel({required this.title, required this.image});
  factory CategoryModel.fromJson( json) {
    return CategoryModel(
      title: json['title'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
