import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    this.onPressed,
    this.textStyle,
  });

  final void Function()? onPressed;
  final String title;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      child: Text(title, style: textStyle),
    );
  }
}
