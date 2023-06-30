import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('onEvent => event: ${'${event.runtimeType}'.toUpperCase()}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('onError => error: ${'${bloc.runtimeType}'.toUpperCase()}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('onChange => Change: ${'${bloc.runtimeType}'.toUpperCase()}');
  }
}
