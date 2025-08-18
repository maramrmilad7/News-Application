import 'package:flutter/material.dart';
import 'package:newapp/Models/article_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child:  articleModel.imageUrl != null && articleModel.imageUrl!.isNotEmpty
      ? Image.network(
          articleModel.imageUrl!,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => _buildPlaceholder(),
        )
      : _buildPlaceholder(),
        ),
        SizedBox(height: 12),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),

        Text(
          articleModel.description??' No description Found',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
Widget _buildPlaceholder() {
  return Container(
    height: 200,
    color: Colors.grey[300],
    child: const Icon(Icons.image_not_supported, size: 50),
  );
}