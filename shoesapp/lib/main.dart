import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/src/models/shoes_model.dart';
import 'package:shoesapp/src/pages/shoes_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      (ChangeNotifierProvider(create: (_) => new ShoesModel())),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      debugShowCheckedModeBanner: false,
      home: ShoesPage(),
      //home: ShoesDescPage(),
    );
  }
}
