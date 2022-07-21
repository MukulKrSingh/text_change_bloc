import 'package:flutter/material.dart';

class TextChange extends StatelessWidget {
  final String text;
  const TextChange({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
