import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_agency/constant/app_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key,
    required this.hintText,
    this.prefixSvgIcon,
    this.isPassword = false,
    required this.controller,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.textInputType = TextInputType.text,
  });

  final String hintText;
  final String? prefixSvgIcon;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputAction textInputAction;
  final FormFieldValidator? validator;
  final TextInputType textInputType;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();}

class _CustomTextFieldState extends State<CustomTextField> {

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      textInputAction: widget.textInputAction,
      obscureText: widget.isPassword ? obscureText : false,
      validator: widget.validator,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(

        filled: true,
        fillColor: Colors.white,
        suffixIcon: widget.isPassword ? GestureDetector(
            onTap: toggle,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 16, top: 20, bottom: 20, end: 12),
              child: obscureText ?
              const Icon(Icons.visibility_off_outlined) :
              const Icon(Icons.visibility_outlined),
            ))
            : null,
        prefixIcon: widget.prefixSvgIcon != null? Padding(
          padding: const EdgeInsetsDirectional.only(start: 10, top: 6, bottom: 6, end: 6),
          child: SvgPicture.asset(widget.prefixSvgIcon!),
        ): null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.blackColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.blackColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.blackColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.blackColor),
        ),
        hintText: widget.hintText,
      ),
    );
  }

  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}