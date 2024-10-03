import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  final String textoBotao;
  final int corBotao;

  const BotaoWidget({super.key, this.textoBotao = "Default", this.corBotao = 0xFF2E58AB });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {}, 
        style:ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(corBotao)),
          padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 20)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
        ),
        child: Text(
          textoBotao, 
          style: const TextStyle(color: Colors.white, fontSize: 18)
          )
        )
    );
  }
}
