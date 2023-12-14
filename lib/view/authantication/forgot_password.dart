import 'package:app_services/utils/components/elevetion_button_theme.dart';
import 'package:flutter/material.dart';


import '../../utils/assets/values/app_padding.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final _emailController = TextEditingController();
  // final AuthControler forgotPassword = AuthControler();
  final isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppPadding(multipliedBy: 3),
            Text(
              'Forgot your password?',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const AppPadding(),
            Text(
              'Enter Your email and we will send  you a password reset link ',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: .5, color: Colors.cyan),
                    ),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            const AppPadding(),
            SizedBox(
                height: 50,
                width: 290,
                child: ElevatedButtoncard(
                    child: InkWell(
                        onTap: () {
                          // forgotPassword.passwordReset(
                          //     _emailController.text, context);
                        },
                        child: Text(
                          'Send',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(color: Colors.white),
                        ))))
          ],
        ),
      ),
    );
  }
}
