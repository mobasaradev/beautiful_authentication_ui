import 'package:auth_ui/modules/auth/widgets/custom_icon_button.dart';
import 'package:auth_ui/modules/auth/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/splash.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SIGN IN",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        "SIGN UP",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const Spacer(),
                  const CustomTextField(
                    hintText: "Email Address",
                    icon: Icons.alternate_email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 40),
                  const CustomTextField(
                    hintText: "Password",
                    icon: Icons.lock,
                    keyboardType: TextInputType.text,
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        CustomIconButton(
                          icon: Icons.android,
                          isPrimary: false,
                        ),
                        SizedBox(width: 20),
                        CustomIconButton(
                          icon: Icons.apple,
                          isPrimary: false,
                        ),
                        Spacer(),
                        CustomIconButton(
                          icon: Icons.arrow_forward,
                          isPrimary: true,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
