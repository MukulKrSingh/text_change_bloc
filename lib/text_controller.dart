import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_change/text.dart';

import 'bloc/app_bloc_bloc.dart';

class TextChangeController extends StatelessWidget {
  final String text;

  const TextChangeController({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextChange(
          text: text,
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
