import 'package:flutter/material.dart';
import 'package:newapp/Models/category_model.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.categories});
  final CategoryModel categories;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          // Image
          SizedBox(
            height: 120,

            width: 170,
            child: Image.asset(categories.image!, fit: BoxFit.cover),
          ),

          // Gradient overlay
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black.withOpacity(0.5), Colors.transparent],
                ),
              ),
            ),
          ),

          // Title
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Text(
              categories.title.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}