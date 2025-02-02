import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        key: UniqueKey(),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign Up.',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 30),
              AuthField(
                hintText: 'Name',
                textEditingController: nameController,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: 'Email',
                textEditingController: emailController,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: 'Password',
                textEditingController: passwordController,
                isObscureText: true,
              ),
              const SizedBox(height: 20),
              const AuthGradientButton(),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                    text: "Don\'t have an account?",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: ' Sign In',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppPallete.gradient2,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
