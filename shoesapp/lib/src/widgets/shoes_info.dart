import 'package:flutter/material.dart';

class ShoesInfo extends StatelessWidget {
  final String title;
  final String description;

  const ShoesInfo({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            this.title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 20),
          Text(
            this.description,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black54, height: 1.8),
          ),
        ],
      ),
    );
  }
}
