import 'package:flutter/material.dart';

import '../../../utils/assets/values/color_scheme.dart';

class SignTextfield extends StatefulWidget {
  String title;
   final String hintText;
   final TextEditingController controller;

   SignTextfield({
    Key? key,
    required this.title,required this.hintText,
    required this.controller
    
  }) : super(key: key);

  @override
  State<SignTextfield> createState() => _SignTextfieldState();
}

class _SignTextfieldState extends State<SignTextfield> {
 bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
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
              obscureText: isVisible?false:true,
              controller:widget.controller,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: (){
                    setState(() {
                      isVisible =! isVisible;
                      print(isVisible);
                    });
                  },
                  child: isVisible? Icon(Icons.visibility):Icon(Icons.visibility_off)),
                border: InputBorder.none,
                hintText: widget.hintText,
                contentPadding: const EdgeInsets.only(left: 10,top: 10),
              ),
            )),
      ],
    );
  }
}
