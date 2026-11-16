import 'dart:developer';

import 'package:bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('Bloc: $bloc, change: $change');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log('close Bloc: $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('create Bloc: $bloc');
  }
}
