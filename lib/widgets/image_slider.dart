import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Models/article_model.dart';
import 'package:newapp/services/news_service.dart';

class ImageSlider extends StatefulWidget {
  final String category;

  const ImageSlider({super.key, required this.category});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
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
        if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          return Slider(image: snapshot.data!.take(3).toList());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class Slider extends StatefulWidget {
  const Slider({super.key, required this.image});
  final List<ArticleModel> image;

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: widget.image
              .map(
                (item) => Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(item.imageUrl ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.image.asMap().entries.map((item) {
            return Container(
              margin: EdgeInsets.all(4),
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == item.key ? Colors.blue : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
