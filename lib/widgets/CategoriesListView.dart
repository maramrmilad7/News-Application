import 'package:flutter/material.dart';
import 'package:newapp/Models/category_model.dart';
import 'package:newapp/widgets/categories_card.dart';

class CategoriesListView extends StatelessWidget {
   CategoriesListView({super.key});
  final List<CategoryModel> categories = CategoryModel.categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoriesCard(categories: categories[index]);
        },
      ),
    );
  }
}