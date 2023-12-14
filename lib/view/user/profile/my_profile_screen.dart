// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';


import '../../../utils/assets/values/app_constants.dart';
import '../../../utils/assets/values/app_padding.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool isSwitched = false;
  bool isSwitch = false;

  get uid => null;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const _buildHeading(),
              const AppPadding(dividedBy: 2),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: AppConstants.defaultPadding / 1.2,
                  horizontal: AppConstants.defaultPadding / 2,
                ),
                // height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff33354e)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(clipBehavior: Clip.none, children: [
                      const CircleAvatar(
                        // backgroundImage: AssetImage(ThemeAssets.propic),
                        radius: 50,
                      ),
                      Positioned(
                        left: 35,
                        top: 80,
                        child: CircleAvatar(
                          radius: 15,
                          // backgroundColor: AppColor.secondary,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.photo_camera,
                                size: 15,
                                color: Colors.white,
                              )),
                        ),
                      )
                    ]),
                    const AppPadding(dividedBy: 2),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "userName",
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                             " customerModel.email",
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const AppPadding(dividedBy: 2),
              Container(
                width: width,
                // height: height * .5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Aboutcontainer(
                        height: height,
                        title: 'Name',
                        subtitle: "customerModel",
                        icon: Icons.person_outline,
                        ontap: () {}),
                    Divider(
                      color: Colors.grey.shade500,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Aboutcontainer(
                        height: height,
                        title: 'Email',
                        subtitle: "customerModel.email,",
                        icon: Icons.email,
                        ontap: () {}),

                    // Aboutcontainer(
                    //     height: height,
                    //     title: 'Password',
                    //     subtitle: 'surender thakur',
                    //     icon: Icons.lock,
                    //     ontap: () {}),
                    // Divider(
                    //   color: Colors.grey.shade500,
                    //   indent: 20,
                    //   endIndent: 20,
                    // ),
                    // Aboutcontainer(
                    //     height: height,
                    //     title: 'Contact Number',
                    //     subtitle: 'surender thakur',
                    //     icon: Icons.call,
                    //     ontap: () {}),
                  ],
                ),
              ),
              const AppPadding(dividedBy: 2),
              Container(
                width: width,
                // height: height * .4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    containertile(
                      height: height,
                      title: 'Pages',
                      icon1: Icons.star,
                      ontap: () {
                        // Get.to(AllPages());
                      },
                      icon2: Icons.arrow_forward_ios,
                    ),
                    Divider(
                      color: Colors.grey.shade500,
                      indent: 20,
                      endIndent: 20,
                    ),
                    containertile(
                      height: height,
                      title: 'Home',
                      icon1: Icons.filter_none_sharp,
                      ontap: () {
                        // Get.to(const HomeScreen());
                      },
                      icon2: Icons.arrow_forward_ios,
                    ),
                    Divider(
                      color: Colors.grey.shade500,
                      indent: 20,
                      endIndent: 20,
                    ),
                  
                    Divider(
                      color: Colors.grey.shade500,
                      indent: 20,
                      endIndent: 20,
                    ),
                    containertile(
                      height: height,
                      title: 'Logout',
                      icon1: Icons.logout,
                      ontap: () async {
                        // final pref = await SharedPreferences.getInstance();
                        // pref.clear();
                        // FirebaseAuth.instance.signOut();
                        // Get.offAll(() => const SignInScreen());
                      },
                      icon2: Icons.arrow_forward_ios,
                    ),
                    const AppPadding(dividedBy: 3)
                  ],
                ),
              ),
              const AppPadding(multipliedBy: 3)
            ],
          ),
        ),
      ),
    );
  }
}

class _buildHeading extends StatelessWidget {
  const _buildHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Profile',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.brightness_4))
      ],
    );
  }
}

class Aboutcontainer extends StatelessWidget {
  const Aboutcontainer({
    Key? key,
    required this.height,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.ontap,
  }) : super(key: key);

  final double height;
  final String title;
  final String subtitle;
  final IconData icon;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ListTile(
        leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(80, 241, 255, 252),
            child: Icon(
              icon,
              color:Colors.black12
            )),
        title: Text(
          title,
          style: const TextStyle(color: Colors.grey),
        ),
        subtitle: Text(
          subtitle,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class containertile extends StatelessWidget {
  const containertile({
    Key? key,
    required this.height,
    required this.title,
    required this.icon1,
    required this.icon2,
    required this.ontap,
  }) : super(key: key);

  final double height;
  final String title;
  final IconData icon1;
  final IconData icon2;

  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ListTile(
        leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(80, 241, 255, 252),
            child: Icon(
              icon1,
              color:Colors.black12,
            )),
        title: Text(
          title,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(icon2),
      ),
    );
  }
}
