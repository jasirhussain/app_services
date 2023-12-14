import 'package:flutter/material.dart';

import '../../../utils/assets/values/color_scheme.dart';


class SignupDivider extends StatelessWidget {
  const SignupDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Divider(
          thickness: 1,
          color: AppColor.secondaryLight.withOpacity(0.4),
          endIndent: 10,
        )),
        Text(
          'Or',
          style: TextStyle(
            color: AppColor.secondaryLight.withOpacity(0.4),
          ),
        ),
        Expanded(
            child: Divider(
          thickness: 1,
          color: AppColor.secondaryLight.withOpacity(0.4),
          indent: 10,
        ))
      ],
    );
  }
}
