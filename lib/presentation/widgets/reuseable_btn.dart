// ignore_for_file: must_be_immutable

import 'package:expense_tracker_bloc/core/constants/app_colors.dart';
import 'package:expense_tracker_bloc/core/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReuseAbleBtn extends StatelessWidget {
  VoidCallback ontap;
  ReuseAbleBtn({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: context.mw * 0.80,
        height: context.mh * 0.07,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            AppColor.blackColor,
            AppColor.blueColor,
          ], begin: Alignment.center, end: Alignment.topLeft),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Add Amount',
            style: GoogleFonts.poppins(
                fontSize: 17,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
