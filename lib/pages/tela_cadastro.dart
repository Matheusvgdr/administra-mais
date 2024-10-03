import 'package:administra_mais/ui/botao_widget.dart';
import 'package:administra_mais/ui/input_widget.dart';
import 'package:administra_mais/ui/titulo_inicial.dart';
import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(33, 100, 33, 64),
                    child: Column(
                      children: [
                        TituloInicialWidget(
                            titulo: "Administra+",
                            subTitulo:
                                "Tenha controle total do seu negócio na palma da mão",
                            icone: Icons.business_sharp),
                        SizedBox(height: 52),
                        InputWidget(
                            placeholder: "Usuário", iconePrefixo: Icons.person),
                        SizedBox(height: 20),
                        InputWidget(
                            placeholder: "Email", iconePrefixo: Icons.email),
                        SizedBox(height: 20),
                        InputWidget(
                            placeholder: "Email",
                            iconePrefixo: Icons.lock,
                            iconeSufixo: Icons.visibility_off),
                        SizedBox(height: 120),
                        BotaoWidget(textoBotao: "Cadastrar"),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Text(
                            "Já possui conta? Entrar",
                            style: TextStyle(color: Color(0xFFBDBDBD)),
                          ),
                        )
                      ],
                    )))));
  }
}
