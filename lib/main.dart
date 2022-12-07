import 'package:flutter/material.dart';
import 'package:movie_app/ui/pages/movies_detail.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomNavBar(),
        );
      },
    );
  }
}
