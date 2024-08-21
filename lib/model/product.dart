class Product{
  String _title;
  double _price;
  bool _isSale;
  String _pathImage;

  Product(this._title, this._price, this._isSale, this._pathImage);

  String get pathImage => _pathImage;

  set pathImage(String value) {
    _pathImage = value;
  }

  bool get isSale => _isSale;

  set isSale(bool value) {
    _isSale = value;
  }

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}