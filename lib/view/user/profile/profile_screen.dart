import 'package:flutter/material.dart';

import '../../../utils/assets/values/app_padding.dart';
import '../../../utils/assets/values/color_scheme.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.yellow),
                  child: SizedBox(
                    height: 200,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.white,
                                      blurStyle: BlurStyle.outer,
                                      blurRadius: 5,
                                      spreadRadius: 3),
                                ],
                                borderRadius: BorderRadius.circular(50),
                              )),
                          const AppPadding(dividedBy: 2),
                          Text("jasir hussain")
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 35,
                    right: 5,
                    child: PopupMenuButton(
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                              child: InkWell(
                                  onTap: () {
                                    // Get.to(InstructorPorfileEdit());
                                  },
                                  child: const Text('Edit Profile')))
                        ];
                      },
                    ))
              ],
            ),
            Text("hvgjkl")
          ],
        ),
      ),
    );
  }
}
