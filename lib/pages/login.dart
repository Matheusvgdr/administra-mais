import 'package:administra_mais/pages/home.dart';
import 'package:administra_mais/ui/botao_widget.dart';
import 'package:administra_mais/ui/input_widget.dart';
import 'package:administra_mais/ui/titulo_inicial.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(33,100,33,64 ),
            child: Column(
              children: [
                TituloInicialWidget(titulo: "Administra+", subTitulo: "Tenha controle total do seu negócio na palma da mão", icone: Icons.business_sharp),
                SizedBox(height: 52),
                InputWidget(placeholder: "Usuário",iconePrefixo: Icons.person),
                SizedBox(height: 20),
                InputWidget(placeholder: "Usuário",iconePrefixo: Icons.password, iconeSufixo: Icons.visibility_off),
                SizedBox(height: 170),
                BotaoWidget(rota: Home(),textoBotao: "Entrar"),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Text(
                    "Já possui conta? Entrar",
                    style: TextStyle(color: Color(0xFFBDBDBD)), 
                  ),
                )
              ],
            ),
          ),)),
    );
  }
}