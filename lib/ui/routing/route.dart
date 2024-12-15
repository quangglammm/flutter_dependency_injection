import 'package:auto_route/auto_route.dart';
import 'package:flutter_dependency_injection/ui/routing/route.gr.dart';


@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: RegistrationRoute.page, initial: true,),
    AutoRoute(page: LoginRoute.page),
  ];
}
