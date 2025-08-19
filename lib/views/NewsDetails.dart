import 'package:flutter/material.dart';
import 'package:newapp/Models/article_model.dart';

class NewsDetails extends StatelessWidget {
   NewsDetails({super.key});
  static String id = 'news_details';
  late ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
   var articleModel = ModalRoute.of(context)!.settings.arguments as ArticleModel;
    return Scaffold(
      appBar: AppBar(title: Text('News Details'),
      centerTitle: true,
      leading:  IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ) ,

        
       
      ),
      body:Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
          articleModel.imageUrl!,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        )
    
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
          articleModel.description??' No description Found',
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    
      ));
  }
}