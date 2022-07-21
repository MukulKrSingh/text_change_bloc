import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import 'app_bloc_state.dart';

part 'app_bloc_event.dart';

class AppBlocBloc extends Bloc<AppBlocEvent, AppState> {
  final List<String> textList = [
    'Initial Text',
    'Changed Text',
    'Changed Again',
  ];
  AppBlocBloc() : super(const AppState.empty()) {
    on<ChangeTextEvent>((event, emit) {
      try {
        int newIndex = state.index + 1;
        if(newIndex >= textList.length) {
          newIndex = 0;
        }
        emit(
          AppState(
            index: newIndex,
            text: textList[newIndex],
          ),
        );
      } on Exception catch (e) {
        // ignore: avoid_print
        print(e.toString());
        emit(
          AppState(
            index: 0,
            text: textList[0],
          ),
        );
      }
    });
  }
}
