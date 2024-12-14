// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter_dependency_injection/data/repository/i_auth_facade.dart'
    as _i200;
import 'package:flutter_dependency_injection/data/repository/impl/auth_facade.dart'
    as _i189;
import 'package:flutter_dependency_injection/services/app_module.dart' as _i182;
import 'package:flutter_dependency_injection/services/firebase_service.dart'
    as _i80;
import 'package:flutter_dependency_injection/ui/bloc/login/login_form_bloc.dart'
    as _i874;
import 'package:flutter_dependency_injection/ui/bloc/registration/registration_form_bloc.dart'
    as _i370;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i80.FirebaseService>(
      () => appModule.firebaseService,
      preResolve: true,
    );
    gh.factory<_i974.FirebaseFirestore>(() => appModule.store);
    gh.factory<_i59.FirebaseAuth>(() => appModule.auth);
    gh.factory<_i200.IAuthFacade>(() => _i189.AuthFacade(
          gh<_i59.FirebaseAuth>(),
          gh<_i974.FirebaseFirestore>(),
        ));
    gh.factory<_i370.RegistrationFormBloc>(
        () => _i370.RegistrationFormBloc(gh<_i200.IAuthFacade>()));
    gh.factory<_i874.LoginFormBloc>(
        () => _i874.LoginFormBloc(gh<_i200.IAuthFacade>()));
    return this;
  }
}

class _$AppModule extends _i182.AppModule {}
