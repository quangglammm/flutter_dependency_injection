import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dependency_injection/ui/routing/enum/page_name_enum.dart';
import 'package:flutter_dependency_injection/ui/routing/main_routing.dart';
import 'package:get/get.dart';

import '../../injection.dart';
import '../bloc/login/login_form_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => locator<LoginFormBloc>(),
        child: Scaffold(
            body: SafeArea(child: SingleChildScrollView(
                child: Padding(padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 100
                      ),
                      Text("Welcome Back", style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),),
                      Text("For Fun", style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: Theme.of(context).textTheme.headlineMedium!.fontSize
                      ),),
                      SizedBox(
                          height: 40
                      ),
                      Text("Sign in here", style: TextStyle(
                          color: Colors.black54
                      ),),
                      SizedBox(
                          height: 10
                      ),
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Email"
                              ),
                            ),
                            SizedBox(
                                height: 10
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "Password"
                              ),
                            ),
                            SizedBox(
                                height: 50
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                                elevation: 0,
                                minimumSize: Size(double.infinity, 55),
                              ),
                              onPressed: () {},
                              child: Text("Login", style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),),
                            ),
                            SizedBox(
                                height: 50
                            ),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                    text: "Don't have an account",
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: " Register here",
                                          style: TextStyle(
                                            color: Colors.blue,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                            /// Using GetX to navigate
                                              Get.toNamed(getPageName(PageNameEnum.REGISTRATION));
                                            }
                                      ),
                                    ]
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),)
            ))
        ),
      ),
    );
  }
}