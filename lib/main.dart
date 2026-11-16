import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:savor/core/routing/app_route.dart';
import 'package:savor/core/services/service_locator.dart';
import 'package:savor/core/services/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await GetIt.I.allReady();
  Bloc.observer = SimpleBlocObserver();
  runApp(const Savor());
}

class Savor extends StatelessWidget {
  const Savor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffFCF9F4)),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.goRouter,
    );
  }
}
