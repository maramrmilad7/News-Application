class CategoryModel {
  final String title;
  final String? image;

  CategoryModel({required this.title, required this.image});
 List<CategoryModel> categories = [
   CategoryModel(title: 'Technology', image: 'images/technology.jpeg'),
   CategoryModel(title: 'Health', image: 'images/health.avif'),
   CategoryModel(title: 'Business', image: 'images/business.avif'),
   CategoryModel(title: 'Sports', image: 'images/sports.avif'),
   CategoryModel(title: 'general', image: 'images/general.avif'),
   CategoryModel(title: 'science', image: 'images/science.avif'),
   CategoryModel(title: 'Entertainment', image: 'images/entertaiment.avif'),
 ];
}
