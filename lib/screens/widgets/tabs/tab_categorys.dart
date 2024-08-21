import 'package:corelab_app_challenge/screens/widgets/modified_text_button.dart';
import 'package:flutter/material.dart';

class TabCategorys extends StatelessWidget {
  const TabCategorys({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Expanded(
        child: ListView(
          children: [
            ModifiedTextButton(textButton: "Anestésicos e Agulhas Gengival", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Biossegurança", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Descartáveis", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Dentística e Estética", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Ortodontia", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Endodontia", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Moldagem", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Prótese", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Cimentos", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Instrumentos", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Cirurgia e Periodontia", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
            ModifiedTextButton(textButton: "Radiologia", colorText: Color(0xFF00B4CC), fontSize: 20, onPressed: (){}, align: TextAlign.left),
          ],
        ),
      ),
    );
  }
}
