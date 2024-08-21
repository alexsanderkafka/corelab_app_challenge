import 'package:corelab_app_challenge/screens/widgets/list_item.dart';
import 'package:flutter/material.dart';

import '../../../model/mock.dart';
import '../../../model/product.dart';

class TabCurrentSearch extends StatelessWidget {
  TabCurrentSearch({super.key});

  final List<Product> products = MyMock.mockProduct();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 24, bottom: 14),
              child: Text(
                "${products.length} resultados encontrados",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xFF002429),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListItem(
                  product: products[0],
                ),
                ListItem(
                  product: products[1],
                ),
                ListItem(
                  product: products[2],
                ),
                ListItem(
                  product: products[3],
                ),
                ListItem(
                  product: products[4],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
