import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  final String textoBotao;
  final int corBotao;
  final Widget rota;

  const BotaoWidget({super.key, this.textoBotao = "Default", this.corBotao = 0xFF2E58AB, required this.rota });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => rota));
         }, 
        style:ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(corBotao)),
          padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 25)),
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
