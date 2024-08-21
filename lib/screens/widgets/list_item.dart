import 'package:corelab_app_challenge/model/product.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListItem extends StatelessWidget {
  final Product product;
  final NumberFormat _numberFormat = NumberFormat.currency(locale: 'pt-br', symbol: '', decimalDigits: 2);

  ListItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: product.isSale ? 212 : 162,
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 20, top: 16, bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              product.pathImage,
              width: 100,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (product.isSale)
                    Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      height: 20,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xFF00B4CC),
                      ),
                      child: const Center(
                        child: Text(
                          "10% OFF",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'DM Sans',
                          ),
                        ),
                      ),
                    ),
                  Flexible(
                    child: SizedBox(
                      width: 219,
                      height: 48,
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          text: product.title,
                        ),
                      ),
                    ),
                  ),
                  if (product.isSale)
                    const Text(
                    "R\$300,00",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF7C9094),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DM Sans',
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  Text(
                    "R\$${_numberFormat.format(product.price)}",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color(0xFF002429),
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DM Sans',
                    ),
                  ),
                  const Text(
                    "Em até 12x de R\$ 249,00",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF00B4CC),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DM Sans',
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Novo",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF7C9094),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'DM Sans',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
