import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('News',style:  GoogleFonts.anton(
                color: Colors.black,
                letterSpacing: 6,
              ),),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu,color: Colors.black,)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert,color: Colors.black,))],
      ),
    );
  }
}
