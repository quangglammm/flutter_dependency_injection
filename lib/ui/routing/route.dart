import 'package:auto_route/auto_route.dart';
import 'package:flutter_dependency_injection/ui/pages/login_page.dart';
import 'package:flutter_dependency_injection/ui/pages/registration_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: RegistrationPage, initial: true),
    AutoRoute(page: LoginPage),
  ],
)

class $AppRouter {}
