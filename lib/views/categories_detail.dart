import 'package:flutter/material.dart';
import 'package:newapp/Models/category_model.dart';
import 'package:newapp/widgets/NewsItemBuilder.dart';

class CategoryDetail extends StatelessWidget {
  CategoryDetail({super.key});
  static String id = 'category_detail';
  late CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    var categoryModel =
        ModalRoute.of(context)!.settings.arguments as CategoryModel;
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
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [NewsItemBuilder(category: categoryModel.title)],
        ),
      ),
    );
  }
}
