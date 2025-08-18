import 'package:flutter/material.dart';
import 'package:newapp/Models/article_model.dart';
import 'package:newapp/services/news_service.dart';
import 'package:newapp/widgets/newsitemlistview.dart';

class NewsItemBuilder extends StatefulWidget {
  final String category;
  const NewsItemBuilder({super.key, required this.category});

  @override
  State<NewsItemBuilder> createState() => _NewsItemBuilderState();
}

class _NewsItemBuilderState extends State<NewsItemBuilder> {
  late final Future<List<ArticleModel>> future;
  @override
  void initState() {
    super.initState();
    future = NewsService().getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsItemListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops  was an error, try later'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
