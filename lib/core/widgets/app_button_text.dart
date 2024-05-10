import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtonText extends StatelessWidget {

  final Function()? onPressed;
  final bool isLoading ;
  const AppButtonText({super.key, this.onPressed,  this.isLoading = false});


  @override
  Widget build(BuildContext context) {
    return isLoading ? const CircularProgressIndicator() : TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          fixedSize: MaterialStateProperty.all(Size(double.maxFinite, 50.h)),
          backgroundColor: const MaterialStatePropertyAll(Colors.cyan)),
      onPressed: onPressed,
      child: Text(
        "Add",
        style: TextStyle(color: Colors.black, fontSize: 20.sp ),
      ),
    );
  }
}
