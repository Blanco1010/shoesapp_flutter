import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/custom_widget.dart';

class ShoesDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ShoesSize(fullscreen: true),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  ShoesInfo(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _BuyNow(),
                  _ColorsSelect(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class _ColorsSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  left: 90, child: _ButtonColor(color: Color(0xffC6D642))),
              Positioned(
                  left: 60, child: _ButtonColor(color: Color(0xffFFAD29))),
              Positioned(
                  left: 30, child: _ButtonColor(color: Color(0xff2099F1))),
              _ButtonColor(color: Color(0xff364D56)),
            ],
          )),
          ButtonOrange(
            text: 'More related items',
            height: 30,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;

  const _ButtonColor({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: this.color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _BuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 0),
        child: Row(
          children: [
            Text(
              '\$180.0',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            ButtonOrange(text: 'Buy now', height: 35, width: 80),
          ],
        ),
      ),
    );
  }
}
