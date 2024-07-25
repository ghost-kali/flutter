import 'package:flutter/material.dart';

class Text_Style extends StatelessWidget {
  const Text_Style(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromARGB(223, 231, 187, 205), fontSize: 24),
    );
  }
}
