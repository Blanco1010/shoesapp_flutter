import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;

  CustomAppBar({required this.text});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 1,
              )
            ],
            color: Colors.white,
          ),
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(width: 10),
              Text(
                this.text,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.search, size: 30),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
