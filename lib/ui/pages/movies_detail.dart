import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MoviesDetail extends StatefulWidget {
  const MoviesDetail({super.key});

  @override
  State<MoviesDetail> createState() => _MoviesDetailState();
}

class _MoviesDetailState extends State<MoviesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242A32),
      appBar: AppBar(backgroundColor: const Color(0xff242A32), actions: [
        SizedBox(
          width: 5.w,
        ),
        const Icon(Icons.arrow_back_ios),
        const Spacer(),
        const Center(
          child: Text(
            "Detail",
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        const Spacer(),
        const Icon(Icons.save_outlined),
        SizedBox(
          width: 5.w,
        ),
      ]),
    );
  }
}
