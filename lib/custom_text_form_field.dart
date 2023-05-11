import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final bool? obsecure;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final double? contentPadding;

  final TextCapitalization? textCapitalization;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final String? Function(String?)? validating;
  final TextInputType? keyboardType;
  final void Function(String)? onSubmit;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    this.hint,
    this.hintStyle,
    this.textCapitalization,
    this.validating,
    this.keyboardType,
    this.obsecure,
    this.prefixIcon,
    this.suffixIcon,
    this.onSubmit,
    this.style,
    this.suffixIconColor,
    this.prefixIconColor,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint ?? '',
        hintStyle: hintStyle ??
            const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
              color: Colors.grey,
            ),
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        contentPadding: EdgeInsets.all(contentPadding ?? 10),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
      ),
      cursorColor: Colors.black,
      style: style ??
          const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
            color: Colors.black,
          ),
      obscureText: obsecure ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      validator: validating,
      onFieldSubmitted: onSubmit,
    );
  }
}
