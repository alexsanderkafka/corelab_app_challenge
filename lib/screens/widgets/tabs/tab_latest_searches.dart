import 'package:corelab_app_challenge/screens/widgets/modified_text_button.dart';
import 'package:flutter/material.dart';

class TabLatestSearches extends StatelessWidget {
  final TextEditingController textEditingController;

  const TabLatestSearches({super.key, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.only(left: 20, top: 24),
        children: [
          Text(
            "Pesquisas recentes",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "DM Sans",
                fontWeight: FontWeight.w400),
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Anestésicos e Agulhas Gengival",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text =
                        "Anestésicos e Agulhas Gengival";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Resultado não encontrado",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Resultado não encontrado";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Falta de internet",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Falta de internet";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Problemas com o servidor",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Problemas com o servidor";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Ortodontia",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Ortodontia";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Endodontia",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Endodontia";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Periféricos e Peças de Mão",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Periféricos e Peças de Mão";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Moldagem",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Moldagem";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Prótese",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Prótese";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Cimentos",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Cimentos";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                  textButton: "Instrumentos",
                  colorText: Color(0xFF7C9094),
                  fontSize: 18,
                  onPressed: () {
                    textEditingController.text = "Instrumentos";
                  },
                  align: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                    textButton: "Cirurgia e Periodontia",
                    colorText: Color(0xFF7C9094),
                    align: TextAlign.left,
                    fontSize: 18,
                    onPressed: () {
                      textEditingController.text = "Cirurgia e Periodontia";
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: Color(0xFF7C9094),
              ),
              Flexible(
                child: ModifiedTextButton(
                    textButton: "Radiologia",
                    colorText: Color(0xFF7C9094),
                    align: TextAlign.left,
                    fontSize: 18,
                    onPressed: () {
                      textEditingController.text = "Radiologia";
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
