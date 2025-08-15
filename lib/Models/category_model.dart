class CategoryModel {
  final String title;
  final String? image;

  CategoryModel({required this.title, required this.image});
  static List<CategoryModel> categories = [
    CategoryModel(title: 'Technology', image: 'images/technology.jpeg'),
    CategoryModel(title: 'Health', image: 'images/health.jpeg'),
    CategoryModel(title: 'Business', image: 'images/Business.jpg'),
    CategoryModel(title: 'Sports', image: 'images/download (1).jpg'),
    CategoryModel(title: 'General', image: 'images/download (2).jpg'),
    CategoryModel(title: 'Science', image: 'images/science.jpeg'),
    CategoryModel(title: 'Entertainment', image: 'images/download.jpg'),
  ];
}
