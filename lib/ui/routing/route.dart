import 'package:flutter_dependency_injection/ui/pages/login_page.dart';
import 'package:flutter_dependency_injection/ui/pages/registration_page.dart';
import 'package:flutter_dependency_injection/ui/routing/enum/page_name_enum.dart';
import 'package:flutter_dependency_injection/ui/routing/main_routing.dart';
import 'package:get/get.dart';

class GetXRoutingManager {
  /// Create instance
  GetXRoutingManager._private();

  static final GetXRoutingManager instance = GetXRoutingManager._private();

  List<GetPage> getPages() {
    return [
      GetPage(
          name: getPageName(PageNameEnum.REGISTRATION),
          page: () => RegistrationPage()
      ),
      GetPage(
          name: getPageName(PageNameEnum.LOGIN),
          page: () => LoginPage()
      ),
    ];
  }
}
