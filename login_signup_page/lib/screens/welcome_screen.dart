import 'package:flutter/material.dart';
import 'package:login_signup_page/screens/signin_screen.dart';
import 'package:login_signup_page/screens/signup_screen.dart';
import 'package:login_signup_page/theme/theme.dart';
import 'package:login_signup_page/widgets/custom_scaffold.dart';
import 'package:login_signup_page/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Welcome Back!\n',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text:
                            '\nEnter personal details to your account',
                            style: TextStyle(
                              fontSize: 20,
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText:'Sign in',
                      textColor: Colors.white,
                      onTap: SignInScreen(),
                      color: Colors.transparent,

                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',
                      textColor: lightColorScheme.primary,
                      onTap: const SignUpScreen(),
                      color: Colors.white,

                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}