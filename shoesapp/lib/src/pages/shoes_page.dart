import 'package:flutter/material.dart';

import 'package:shoesapp/src/widgets/custom_widget.dart';

class ShoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(text: 'For you'),
          SizedBox(height: 20),
          ShoesSize(),
        ],
      ),
    );
  }
}
