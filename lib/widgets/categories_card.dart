import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key});

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
            child: Image.asset('images/technology.jpeg', fit: BoxFit.cover),
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
              'technology'.toUpperCase(),
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