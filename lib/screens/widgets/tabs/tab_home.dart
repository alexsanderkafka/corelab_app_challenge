import 'package:corelab_app_challenge/model/mock.dart';
import 'package:corelab_app_challenge/model/product.dart';
import 'package:corelab_app_challenge/screens/widgets/list_item.dart';
import 'package:flutter/material.dart';

class TabHome extends StatelessWidget {
  TabHome({super.key});

  final Product productOne = Product(
      "Condicionador Ácido Fosfórico 37% - AllPrime",
      29.90,
      false,
      "assets/images/img1.png");
  final Product productTwo = Product(
      "Condicionador Ácido Fosfórico 37% - AllPrime",
      29.90,
      true,
      "assets/images/img1.png");
  final Product productThree = Product(
      "Condicionador Ácido Fosfórico 37% - AllPrime",
      29.90,
      true,
      "assets/images/img2.png");
  final Product productFour = Product(
      "Condicionador Ácido Fosfórico 37% - AllPrime",
      29.90,
      false,
      "assets/images/img1.png");
  final Product productFive = Product(
      "Condicionador Ácido Fosfórico 37% - AllPrime",
      29.90,
      false,
      "assets/images/img2.png");

  List<Product> products = MyMock.mockProduct();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: const Padding(
            padding: EdgeInsets.only(left: 20, top: 24, bottom: 20),
            child: Text(
              "Últimos anúncios",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color(0xFF002429),
                  fontSize: 20,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Hoje",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF94A6A9),
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              ListItem(
                product: productOne,
              ),
              ListItem(
                product: productTwo,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Ontem",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF94A6A9),
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              ListItem(
                product: productThree,
              ),
              ListItem(
                product: productFour,
              ),
              ListItem(
                product: productFive,
              )
            ],
          ),
        ),
      ],
    );
  }
}
