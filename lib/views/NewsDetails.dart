import 'package:flutter/material.dart';
import 'package:newapp/Models/article_model.dart';

// ignore: must_be_immutable
class NewsDetails extends StatefulWidget {
  NewsDetails({super.key});
  static String id = 'news_details';

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  late ArticleModel articleModel;
  bool isBookmarked = false;
  @override
  void initState() {
    super.initState();
    isBookmarked = false;
  }

  @override
  Widget build(BuildContext context) {
    var articleModel =
        ModalRoute.of(context)!.settings.arguments as ArticleModel;
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep On Reading'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                articleModel.imageUrl!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 12),
            Text(
              articleModel.title,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),

            Text(
              articleModel.description ?? ' No description Found',
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.share, color: Colors.black54, size: 40),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isBookmarked = !isBookmarked;
                    });
                  },
                  child: Icon(
                    isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                    color: Colors.yellow,
                    size: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
