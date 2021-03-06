import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/src/helpers/helpers.dart';
import 'package:shoesapp/src/models/shoes_model.dart';
import 'package:shoesapp/src/widgets/custom_widget.dart';

class ShoesDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    changeStatusLight();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                    tag: 'shoes-1',
                    child: Material(child: ShoesSize(fullscreen: true))),
                Positioned(
                  top: 40,
                  child: GestureDetector(
                    onTap: () {
                      changeStatusDark();
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ShoesInfo(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _ButtonBuyNow(),
                  _ColorsSelect(),
                  _ButtonLikeCarSettings(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class _ButtonLikeCarSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ButtonShadow(icon: Icon(Icons.star, color: Colors.red, size: 25)),
          _ButtonShadow(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
          _ButtonShadow(
              icon: Icon(
            Icons.settings,
            color: Colors.grey.withOpacity(0.4),
            size: 25,
          )),
        ],
      ),
    );
  }
}

class _ButtonShadow extends StatelessWidget {
  final Icon icon;

  const _ButtonShadow({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.icon,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: -5,
              blurRadius: 20,
              offset: Offset(0, 10),
            )
          ]),
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
                left: 90,
                child: _ButtonColor(
                  color: Color(0xffC6D642),
                  time: 4,
                  assets: 'assets/img/verde.png',
                ),
              ),
              Positioned(
                left: 60,
                child: _ButtonColor(
                  color: Color(0xffFFAD29),
                  time: 3,
                  assets: 'assets/img/amarillo.png',
                ),
              ),
              Positioned(
                left: 30,
                child: _ButtonColor(
                  color: Color(0xff2099F1),
                  time: 2,
                  assets: 'assets/img/azul.png',
                ),
              ),
              _ButtonColor(
                color: Color(0xff364D56),
                time: 1,
                assets: 'assets/img/negro.png',
              ),
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
  final int time;
  final String assets;

  const _ButtonColor({
    required this.color,
    required this.time,
    required this.assets,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: Duration(milliseconds: time * 200),
      delay: Duration(milliseconds: time * 300),
      child: GestureDetector(
        onTap: () {
          final shoesModel = Provider.of<ShoesModel>(context, listen: false);
          shoesModel.assetsImage = this.assets;
        },
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: this.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class _ButtonBuyNow extends StatelessWidget {
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
            Bounce(
              from: 10,
              duration: Duration(seconds: 1),
              child: ButtonOrange(text: 'Buy now', height: 35, width: 80),
            ),
          ],
        ),
      ),
    );
  }
}
