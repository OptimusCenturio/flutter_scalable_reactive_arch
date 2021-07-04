import 'package:bloc/bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase blocBase) {
    super.onCreate(blocBase);
    print('onCreate -- blocBase: ${blocBase.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
  }

  @override
  void onChange(BlocBase blocBase, Change change) {
    super.onChange(blocBase, change);
    print('onChange -- blocBase: ${blocBase.runtimeType}, change: $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('onTransition -- bloc: ${bloc.runtimeType}, transition: $transition');
  }

  @override
  void onError(BlocBase blocBase, Object error, StackTrace stackTrace) {
    print('onError -- blocBase: ${blocBase.runtimeType}, error: $error');
    super.onError(blocBase, error, stackTrace);
  }

  @override
  void onClose(BlocBase blocBase) {
    super.onClose(blocBase);
    print('onClose -- blocBase: ${blocBase.runtimeType}');
  }
}
