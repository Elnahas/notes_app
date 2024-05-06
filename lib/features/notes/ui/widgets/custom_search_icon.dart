import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {

  final IconData icon ; 
  final Function() onTap ;
  const CustomSearchIcon({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        height: 46.h,
        width: 46.w,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16)),
            child:  Center(child: Icon(icon , size: 28,)),
      ),
    );
  }
}
