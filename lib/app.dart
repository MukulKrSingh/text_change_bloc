import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_change/text_controller.dart';

import 'bloc/app_bloc_bloc.dart';
import 'bloc/app_bloc_state.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => AppBlocBloc(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Text Change'),
          ),
          body: BlocConsumer<AppBlocBloc, AppState>(
            listener: (context, state) {},
            builder: (context, state) {
              return TextChangeController(
                text: state.text,
              );
            },
          ),
        ),
      ),
    );
  }
}
