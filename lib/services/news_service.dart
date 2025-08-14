import 'package:newapp/Models/article_model.dart';
import 'package:newapp/helper/api.dart';

class NewsService {
  final Api api;

  NewsService(this.api);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      final url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category';
      
      var response = await api.get(url: url, token: null);

      Map<String, dynamic> jsonData = response;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}