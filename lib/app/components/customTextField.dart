import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController  controller;
  final String labelText;
  final bool obsureText;
  final Widget? preffixIcon;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.obsureText,
    this.preffixIcon,
    this.suffixIcon,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    const Color background =  Color(0xFF260534);
    const Color colorText =  Color(0xFF858896);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, _) => TextFormField(
        controller: controller,
        obscureText: obsureText,
        style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.3,
            color: background
        ),
        decoration: InputDecoration(
          prefixIcon: preffixIcon,
          suffixIcon: suffixIcon,
          prefixIconColor: background,
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: background
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          enabledBorder:  OutlineInputBorder(
            borderSide: const BorderSide(color: colorText, width: 1.8),
            borderRadius: BorderRadius.circular(10.r),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: const BorderSide(color: background, width: 1.8),
            borderRadius: BorderRadius.circular(10.r),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
        validator: validator,
      ),
    );
  }
}
