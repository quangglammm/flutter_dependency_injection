import 'package:flutter_dependency_injection/result.model.dart';

import '../models/user.model.dart';

abstract class IAuthFacade {
  Future<Result> signIn({required String email, required String password});
  Future<Result> register({required String username, required String email, required String password});
  Future<User?> getUser();
  Future<void> logOut();
}