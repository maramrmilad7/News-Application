import 'package:flutter/material.dart';
import 'package:newapp/Models/article_model.dart';
import 'package:newapp/widgets/news_item.dart';

class NewsItemListView extends StatelessWidget {
  const NewsItemListView({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: GestureDetector(
            
            onTap: (){
              Navigator.pushNamed(context, 'news_details', arguments: articles[index]);
            },
            child: NewsItem(articleModel: articles[index])),
        );
      }),
    );
  }
}
