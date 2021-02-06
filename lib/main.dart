import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'bloc_observer.dart';

void main() {
  /// App bloc observer
  Bloc.observer = AppBlocObserver();

  runApp(App());
}
