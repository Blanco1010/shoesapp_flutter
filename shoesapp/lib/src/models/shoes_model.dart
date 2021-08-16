import 'package:flutter/foundation.dart';

class ShoesModel with ChangeNotifier {
  String _assetsImage = 'assets/img/azul.png';
  double _size = 9.0;

  String get assetsImage => _assetsImage;
  set assetsImage(String text) {
    this._assetsImage = text;
    notifyListeners();
  }

  double get sizeShoes => _size;
  set sizeShoes(double vaule) {
    this._size = vaule;
    notifyListeners();
  }
}
