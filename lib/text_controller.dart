import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_change/text.dart';

import 'bloc/app_bloc_bloc.dart';

class TextController extends StatefulWidget {
  final String text;
  const TextController({Key? key, required this.text}) : super(key: key);

  @override
  State<TextController> createState() => _TextControllerState();
}

class _TextControllerState extends State<TextController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextChange(
          text: widget.text,
        ),
        ElevatedButton(
          onPressed: () =>
              context.read<AppBlocBloc>().add(const ChangeTextEvent()),
          child: const Text('Change Text'),
        ),
      ],
    );
  }
}
