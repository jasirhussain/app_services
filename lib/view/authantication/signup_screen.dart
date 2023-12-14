import 'package:app_services/view/authantication/widgets/signup_devider.dart';
import 'package:flutter/material.dart';

import '../../utils/assets/values/color_scheme.dart';
import '../../utils/assets/values/app_padding.dart';
import '../../utils/components/elevetion_button_theme.dart';
import 'signin_screen.dart';
import 'widgets/sign_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  final checkPasswordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    DateTime date = DateTime.now();
    return Scaffold(
      backgroundColor: AppColor.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .05),
          child: Column(
            children: [
              const AppPadding(
                multipliedBy: 1.5,
              ),
              const Text(
                'HI\'',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
              ),
              const Text(
                'Create your Account',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              SignTextfield(
                  controller: nameController,
                  title: 'Name',
                  hintText: 'Enter your name'),
              SignTextfield(
                  controller: emailController,
                  title: 'Email',
                  hintText: 'Enter your email'),
              const AppPadding(
                dividedBy: 2,
              ),
              SignTextfield(
                controller: passwordController,
                title: 'Password',
                hintText: '...........',
              ),
              const AppPadding(
                dividedBy: 2,
              ),
              SignTextfield(
                controller: checkPasswordController,
                title: 'Re -enter Password',
                hintText: '...........',
              ),
              const AppPadding(),
              ElevatedButtoncard(
                child: Text("data"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                },
              ),
            
              //       isLoading: controller.isLoading.value,
              //       name: 'Sign Up',
              //       onTap: () {
              //         controller.signUp(
              //             nameController.text,
              //             emailController.text,
              //             passwordController.text,
              //             checkPasswordController.text,'${date.day}-${date.month}-${date.year}'                     );
              //       },
              //     );
              // GetBuilder<AuthController>(
              //   init: AuthController(),
              //   initState: (_) {},
              //   builder: (controller) {
              //     return ElevatedButtoncard(
              //       isLoading: controller.isLoading.value,
              //       name: 'Sign Up',
              //       onTap: () {
              //         controller.signUp(
              //             nameController.text,
              //             emailController.text,
              //             passwordController.text,
              //             checkPasswordController.text,'${date.day}-${date.month}-${date.year}'                     );
              //       },
              //     );
              //   },
              // ),
              const AppPadding(
                dividedBy: 2,
              ),
              const SignupDivider(),
              const AppPadding(
                dividedBy: 2,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset(
              //       ThemeAssets.facebookicon,
              //       height: 40,
              //       width: 40,
              //     ),
              //     const AppPadding(),
              //     Image.asset(
              //       ThemeAssets.googleicon,
              //       height: 40,
              //       width: 40,
              //     ),
              //   ],
              // ),
              const AppPadding(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account ?'),
                  InkWell(
                    onTap: () {
                      // Get.to(() => Signin());
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: AppColor.primaryLight,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
