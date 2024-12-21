import 'package:flutter_dependency_injection/ui/routing/enum/page_name_enum.dart';

/// Using to get page's name
String getPageName(PageNameEnum pageName) => '/${pageName.name.toLowerCase()}';