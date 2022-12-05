import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFieldForSearch extends StatelessWidget {
  const TextFieldForSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.h),
      width: 90.w,
      height: 6.h,
      child: TextFormField(
        style: GoogleFonts.poppins(
            fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.w500),
        cursorColor: Colors.black,
        cursorHeight: 3.h,
        decoration: InputDecoration(
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 25,
              color: Colors.grey.withOpacity(0.13),
            ),
            borderRadius: BorderRadius.circular(18.sp),
          ),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.grey.shade500,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 25,
              color: Colors.grey.withOpacity(0.13),
            ),
            borderRadius: BorderRadius.circular(18.sp),
          ),
        ),
      ),
    );
  }
}
