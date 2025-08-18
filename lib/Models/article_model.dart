class ArticleModel {
  final String title;
  final String? description;
  final String? imageUrl;

  ArticleModel({
    required this.title,
     this.description,
     this.imageUrl,
  });
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      title: json['title'] ?? ' No Title',
      description: json['description'],
      imageUrl: json['urlToImage'] ,
    );
  }
}
