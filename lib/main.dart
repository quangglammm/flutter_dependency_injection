import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/injection.dart';
import 'package:flutter_dependency_injection/ui/routing/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = locator<AppRouter>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      color: Colors.redAccent,
    );
  }
}
