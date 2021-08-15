import 'package:flutter/material.dart';

class ButtonOrange extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? color;

  const ButtonOrange({required this.text, this.width, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width ?? 150,
      height: height ?? 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: this.color ?? Colors.orange,
      ),
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
