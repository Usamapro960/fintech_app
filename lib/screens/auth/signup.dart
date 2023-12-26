import 'package:fintech/core/component/app_custom_button.dart';
import 'package:fintech/core/utilities/colors.dart';
import 'package:fintech/screens/auth/create_account.dart';
import 'package:fintech/screens/auth/login.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30),
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.images.finance.path),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Stay on top of your finance with us.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Text(
                      "We are your new financial Advisors\nto recommend the best investments for you.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4F4F4F)),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AppButton(
                      child: const Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const CreateAccount();
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      })),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: AppColors.kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
