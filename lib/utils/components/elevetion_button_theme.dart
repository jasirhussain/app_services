import 'package:flutter/material.dart';

class ElevatedButtoncard extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final Color? color;
  const ElevatedButtoncard({
    Key? key,
    this.onPressed,
    this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            gradient:const LinearGradient(
                colors: [Color(0xfff5c816), const Color(0XFFf0df48)]),
            boxShadow: [
              BoxShadow(
                spreadRadius: 0,
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 2,
                offset: const Offset(0, 2),
              ),
            ]),
        child: Center(child: child),
      ),
    );
  }
}
