import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/ui/routing/enum/page_name_enum.dart';
import 'package:get/get.dart';

import '../routing/main_routing.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text("Thanks for joining", style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),),
                    Text("DI", style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize
                    ),),
                    SizedBox(
                        height: 40
                    ),
                    Text("Register here", style: TextStyle(
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
                                  labelText: "Username"
                              ),
                            ),
                            SizedBox(
                                height: 10
                            ),
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
                              height: 50,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                                elevation: 0,
                                minimumSize: Size(double.infinity, 55),
                              ),
                              onPressed: () {
                                /// Using GetX to navigate
                                Get.toNamed(getPageName(PageNameEnum.LOGIN));
                              },
                              child: Text("Sign Up", style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: "Already have an account",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                            children: [
                              TextSpan(
                                  text: " Sign In",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print("Let's go");
                                      /// Using GetX to navigate
                                      Get.toNamed(getPageName(PageNameEnum.LOGIN));
                                    }
                              ),
                            ]
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        )
    );
  }
}