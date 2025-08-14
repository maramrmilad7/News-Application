class ArticleModel {
  final String title;
  final String? description;
  final String? imageUrl;

  ArticleModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['urlToImage'] ?? '',
    );
  }
}
