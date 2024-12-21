import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/injection.dart';
import 'package:flutter_dependency_injection/ui/routing/enum/page_name_enum.dart';
import 'package:flutter_dependency_injection/ui/routing/main_routing.dart';
import 'package:flutter_dependency_injection/ui/routing/route.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /// Initialize Firebase app
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  /// Dependency Injection
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      /// Setup GetX Routing Management
      initialRoute: getPageName(PageNameEnum.LOGIN),
      getPages: GetXRoutingManager.instance.getPages(),
      color: Colors.redAccent,
    );
  }
}
