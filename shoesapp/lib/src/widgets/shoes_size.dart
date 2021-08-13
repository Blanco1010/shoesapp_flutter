import 'package:flutter/material.dart';

class ShoesSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          color: Color(0xffF8D468),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SHoes with shadow
            Flexible(child: _ShoesWithShadow())
            //Size to shoes
          ],
        ),
      ),
    );
  }
}

class _ShoesWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Image(image: AssetImage('assets/img/azul.png')),
        ],
      ),
    );
  }
}
