import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtonText extends StatelessWidget {
  const AppButtonText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          fixedSize: MaterialStateProperty.all(Size(double.maxFinite, 50.h)),
          backgroundColor: MaterialStatePropertyAll(Colors.cyan)),
      onPressed: () {},
      child: Text(
        "Add",
        style: TextStyle(color: Colors.black, fontSize: 20.sp ),
      ),
    );
  }
}
