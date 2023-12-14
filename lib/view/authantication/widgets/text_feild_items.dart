
import 'package:flutter/material.dart';

import '../../../utils/assets/values/color_scheme.dart';

class TextFieldItems extends StatelessWidget {
 const TextFieldItems(
      {Key? key,
      this.seenOnly = false,
      required this.text,
      required this.hintText,
      required this.controller})
      : super(key: key);

  final String text;
  final String hintText;
  final TextEditingController controller;
  final bool seenOnly;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20), // bottom:20
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.secondary),
              child: TextField(
                readOnly: seenOnly,
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  contentPadding: const EdgeInsets.only(left: 10),
                ),
              )),
        ],
      ),
    );
  }
}
