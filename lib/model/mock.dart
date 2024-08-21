import 'package:corelab_app_challenge/model/product.dart';

abstract class MyMock{
  static List<Product> mockProduct(){

    List<Product> products = [];

    Product productOne = Product("Condicionador Ácido Fosfórico 37% - AllPrime", 29.90, false, "assets/images/img1.png");
    Product productTwo = Product("Condicionador Ácido Fosfórico 37% - AllPrime", 29.90, true, "assets/images/img1.png");
    Product productThree = Product("Condicionador Ácido Fosfórico 37% - AllPrime", 29.90, true, "assets/images/img2.png");
    Product productFour = Product("Condicionador Ácido Fosfórico 37% - AllPrime", 29.90, false, "assets/images/img1.png");
    Product productFive = Product("Condicionador Ácido Fosfórico 37% - AllPrime", 29.90, false, "assets/images/img2.png");

    products.add(productOne);
    products.add(productTwo);
    products.add(productThree);
    products.add(productFour);
    products.add(productFive);

    return products;
  }
}