import 'dart:math';

import 'package:newapp/Models/article_model.dart';
import 'package:newapp/helper/api.dart';

class NewsService {
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    final url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=407f8873e97c44d6af7897612b3cf076&category=$category';

    var response = await Api().get(url: url, token: null);

    Map<String, dynamic> jsonData = response;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);
      articlesList.add(articleModel);
    }

    return articlesList;
  }
}
