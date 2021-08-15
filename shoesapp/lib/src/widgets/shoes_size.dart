import 'package:flutter/material.dart';

class ShoesSize extends StatelessWidget {
  final bool fullscreen;

  ShoesSize({required this.fullscreen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (fullscreen) ? 5 : 30, vertical: (fullscreen) ? 0 : 5),
      child: Container(
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          color: Color(0xffF8D468),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Shoes with shadow
            Flexible(child: _ShoesWithShadow()),
            //Size to shoes
            if (!fullscreen) _ShoeSize(),
            SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}

class _ShoeSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(child: _BoxSizeShoes(number: 7.0)),
          Flexible(child: _BoxSizeShoes(number: 7.5)),
          Flexible(child: _BoxSizeShoes(number: 8.0)),
          Flexible(child: _BoxSizeShoes(number: 8.5)),
          Flexible(child: _BoxSizeShoes(number: 9.0)),
          Flexible(child: _BoxSizeShoes(number: 9.5)),
        ],
      ),
    );
  }
}

class _BoxSizeShoes extends StatelessWidget {
  final double number;

  const _BoxSizeShoes({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: (number == 9) ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (number == 9)
              BoxShadow(
                color: Color(0xffF1A23A),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
          ]),
      child: Text(
        '${number.toString().replaceAll('.0', '')}',
        style: TextStyle(
          color: (number == 9) ? Colors.white : Color(0xffF1A23A),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _ShoesWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 0,
            child: _ShoeShadow(),
          ),
          Image(image: AssetImage('assets/img/azul.png')),
        ],
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 240,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)],
        ),
      ),
    );
  }
}
