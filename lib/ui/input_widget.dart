import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String placeholder;
  final IconData? iconePrefixo;
  final IconData? iconeSufixo;

  const InputWidget(
      {super.key,
      required this.placeholder,
      this.iconePrefixo,
      this.iconeSufixo});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(25),
            hintText: placeholder,
            prefixIcon: iconePrefixo != null
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
                    child: Icon(
                      iconePrefixo as IconData,
                      size: 30,
                    ),
                  )
                : null,
            suffixIcon: iconeSufixo != null
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 25, 0),
                    child: Icon(
                      iconeSufixo,
                      size: 30,
                    ),
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFF2F2F2)),
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFF2F2F2)),
              borderRadius: BorderRadius.circular(15.0),
            ),
            fillColor: const Color(0xFFF2F2F2),
            filled: true));
  }
}
