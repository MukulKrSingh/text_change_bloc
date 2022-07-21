
import 'package:flutter/foundation.dart' show immutable;
import 'package:equatable/equatable.dart';

@immutable
class AppState extends Equatable {
  final int index;
  final String text;

  const AppState.empty()
      : index = 0,
        text = 'Initial Text';

  const AppState({
    required this.index,
    required this.text,
  });

  @override
  List<Object> get props => [index, text];
}
