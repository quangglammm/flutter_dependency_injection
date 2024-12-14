import 'package:flutter_dependency_injection/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@InjectableInit()
/// Old syntax
// void configureDependencies() => $initGetIt(getIt);
Future<void> configureDependencies() async => locator.init();