import 'package:flutter/material.dart';

class BottomGlobalWidget extends StatelessWidget {
  final String titleButtom;
  final double? paddingVertical;
  final double? paddingHorizontal;
  final VoidCallback? onPressed;
  final Color? color;
  final double? radius;

  const BottomGlobalWidget({
    Key? key,
    required this.titleButtom,
    this.onPressed,
    this.color,
    this.radius = 16,
    this.paddingVertical = 0,
    this.paddingHorizontal = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.cover,
      child: RawMaterialButton(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal!,
          vertical: paddingVertical!,
        ),
        onPressed: onPressed,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
        fillColor: color ?? const Color(0xFFFF5A26),
        child: Text(
          titleButtom,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
