import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.onLongPressed,
    this.height,
    this.width,
    this.elevation,
    this.padding,
    this.color,
    this.radius,
    this.borderSide,
    this.text,
    this.textStyle,
    this.child,
  });

  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final double? height;
  final double? width;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double? radius;
  final BorderSide? borderSide;
  final String? text;
  final TextStyle? textStyle;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width,
      child: MaterialButton(
        onPressed: onPressed ?? () {},
        onLongPress: onLongPressed,
        highlightElevation: 0,
        elevation: elevation ?? 0,
        padding: padding,
        color: color,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
          borderSide: borderSide ?? BorderSide.none,
        ),
        child: child,
      ),
    );
  }
}
