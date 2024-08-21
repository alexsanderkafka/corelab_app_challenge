import 'package:flutter/material.dart';

class TabNotFound extends StatelessWidget {

  final String valueNotFound;

  const TabNotFound({super.key, required this.valueNotFound});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 79),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(left: 69, right: 69),
                  child: Image.asset("assets/images/img3.png",
                      width: 236.21, height: 180, alignment: Alignment.centerLeft),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Resultado não encontrado",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Não encontramos nenhum resultado parecido com \"${valueNotFound.toLowerCase()}\".",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF4A6569)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
