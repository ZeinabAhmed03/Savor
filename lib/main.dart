import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:savor/core/routing/app_route.dart';
import 'package:savor/core/utils/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await GetIt.I.allReady();
  runApp(const Savor());
}

class Savor extends StatelessWidget {
  const Savor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.goRouter,
    );
  }
}
