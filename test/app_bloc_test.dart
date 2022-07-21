import 'package:flutter_test/flutter_test.dart';
import 'package:text_change/bloc/app_bloc_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:text_change/bloc/app_bloc_state.dart';

void main() {
  blocTest<AppBlocBloc, AppState>(
    'Initial State',
    build: () => AppBlocBloc(),
    verify: (appState) =>
        expect(appState.state, const AppState.empty(), reason: 'Initial State'),
  );
  blocTest<AppBlocBloc, AppState>(
    'emits [MyState] when MyEvent is added.',
    build: () => AppBlocBloc(),
    act: (bloc) => bloc.add(const ChangeTextEvent()),
    expect: () => const <AppState>[
      AppState(
        index: 1,
        text: 'Changed Text',
      ),
    ],
  );
}
