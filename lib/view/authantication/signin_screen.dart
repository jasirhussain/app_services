// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously
import 'package:app_services/utils/assets/values/app_constants.dart';
import 'package:app_services/utils/components/elevetion_button_theme.dart';
import 'package:app_services/view/authantication/widgets/sign_textfield.dart';
import 'package:app_services/view/authantication/widgets/text_feild_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../utils/assets/values/color_scheme.dart';
import '../../utils/assets/values/app_padding.dart';
import '../../utils/components/landing_page.dart';
import 'signup_screen.dart';
import 'widgets/signup_devider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.defaultPadding / 2),
        child: Column(
          children: [
            const AppPadding(multipliedBy: 4),
            const Text(
              'Welcome!',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
            ),
            const Text(
              'login to your account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            const AppPadding(dividedBy: 2),
            TextFieldItems(
                controller: emailController,
                text: 'Email',
                hintText: '123@gmail.com'),
            const AppPadding(
              dividedBy: 2,
            ),
            SignTextfield(
              controller: passwordController,
              title: 'Password',
              hintText: '...........',
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  // Get.to( ForgotScreen());
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const AppPadding(dividedBy: 1),
            ElevatedButtoncard(
              onPressed: (){
                Get.to(const LandingPage());
              },
                child: Text(
              "Sign In".toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            )),
            //  GetBuilder<AuthController>(
            //       init: AuthController(),
            //       initState: (_) {},
            //       builder: (controller) {F
            //         return ElevatedButtoncard(
            //           isLoading: controller.isLoading.value,
            //           name: 'Login',
            //           onTap: () {
            //             controller.signIn(
            //                 emailController.text,
            //                passwordController.text);
            //           },
            //         );
            //       },
            //     ),
            const AppPadding(dividedBy: 1),
            const SignupDivider(),
            const AppPadding(),
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
            const AppPadding(
              multipliedBy: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Didn\'t have an account ?'),
                const SizedBox(
                  width: 3,
                ),
                InkWell(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));

                  },
                  child: Text(
                    'Sign up',
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
    );
  }
}
