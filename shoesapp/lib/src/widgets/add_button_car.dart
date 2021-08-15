import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/custom_widget.dart';

class AddCarButton extends StatelessWidget {
  final double vaule;

  const AddCarButton({required this.vaule});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            SizedBox(width: 20),
            Text(
              '\$$vaule',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            ButtonOrange(text: 'Add to cart'),
            SizedBox(width: 25),
          ],
        ),
      ),
    );
  }
}
