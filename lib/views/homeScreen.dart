import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newapp/widgets/CategoriesListView.dart';
import 'package:newapp/widgets/NewsItemBuilder.dart';
import 'package:newapp/widgets/image_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'News',
          style: GoogleFonts.anton(color: Colors.black, letterSpacing: 6),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.menu, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(child: ImageSlider(category: 'technology')),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Text(
                'General News',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),

            NewsItemBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
