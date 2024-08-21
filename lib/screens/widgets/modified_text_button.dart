import 'package:flutter/material.dart';

class ModifiedTextButton extends StatelessWidget {
  final String textButton;
  final Color colorText;
  final double fontSize;
  final VoidCallback? onPressed;
  final TextAlign align;

  const ModifiedTextButton({super.key, required this.textButton, required this.colorText, required this.fontSize, this.onPressed, required this.align});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text(
          textButton,
          textAlign: align,
          style: TextStyle(
            color: colorText,
            fontSize: fontSize,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
