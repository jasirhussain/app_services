// ignore_for_file: file_names


import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../utils/assets/values/app_constants.dart';

class NeumorphicTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  final Function()? onPresss;
  final String? nameee;
  final Widget? icon;
  final Widget? child;
  final String Function(String?)? validator;
  final bool read;
  final int? lines;
  final bool isEditable;
  final String? hint;
  final bool obscureText;
  const NeumorphicTextFeild({
    Key? key,
    required this.name,
    required this.controller,
    this.validator,
    this.nameee,
    this.icon,
    this.child,
    this.lines,
    this.read = false,
    this.hint,
    this.onPresss,
    this.isEditable = false,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: const NeumorphicStyle(
        color: Colors.white,
        depth: -3,
      ),
      child: TextFormField(
        maxLines: lines,
        readOnly: read,
        obscureText: obscureText,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          labelText: name,
          suffix: isEditable
              ? IconButton(
                  icon: const Icon(
                    Icons.edit,
                    size: 20,
                    color: Colors.blue,
                  ),
                  onPressed: onPresss,
                )
              : const SizedBox(),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppConstants.defaultPadding / 2,
            vertical: AppConstants.defaultPadding / 6,
          ),
          hintText: hint,
          border: InputBorder.none,
          labelStyle: TextStyle(
            color: const Color(0XFF2D416F).withOpacity(0.7),
          ),
          suffixIcon: icon,
        ),
      ),
    );
  }
}
