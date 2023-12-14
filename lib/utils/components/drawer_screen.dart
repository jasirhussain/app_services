import 'package:flutter/material.dart';

import '../../view/authantication/signin_screen.dart';
import '../../view/user/home/screens/homescreen.dart';
import '../../view/user/profile/profile_screen.dart';
import '../../view/user/shift/screens/shift_details_screen.dart';
import '../assets/values/app_constants.dart';
import '../assets/values/app_padding.dart';
import '../assets/values/color_scheme.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.defaultPadding / 2,
              ),
              height: 130,
              color: Colors.amber.shade100,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 64,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/medis-30b09.appspot.com/o/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png?alt=media&token=e8944e87-0a83-4fe4-a138-561685e9bf00"),
                          fit: BoxFit.cover),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0.2,
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                  ),
                  const AppPadding(dividedBy: 2),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tom cruse",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColor.background),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "079696969",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColor.background.withOpacity(0.5)),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  )
                ],
              ),
            ),
            _buildcards(context, Icons.home_outlined, "Home",() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen() ),);
            }),
            // _buildcards(context, Icons.filter_tilt_shift_sharp, "shifts"),
            _buildcards(
                context, Icons.account_balance_wallet_outlined, "Worked Time",() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  ShiftDetailsScreen()),);
            }),
            // _buildcards(context, Icons.photo_album_outlined, "TimeSheets"),
            _buildcards(context, Icons.person_2_outlined, "My Profile",() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyWidget() ),);
            }),
            _buildcards(context, Icons.logout, "Logout",() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen() ),);
            }),
             _buildcards(context, Icons.info_outline, "About",() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  SignInScreen()),);
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildcards(
    BuildContext context,
    IconData icon,
    String name,
     final Function() ontap,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 10,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Column(
          children: [
            Container(
              height: 50,
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.amber,
                    size: 30,
                  ),
                  const AppPadding(
                    dividedBy: 2,
                  ),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildIconAndText(
    BuildContext context,
    IconData icon,
    String title,
  ) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppConstants.defaultPadding / 4,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: AppColor.primary,
              ),
              const AppPadding(dividedBy: 4),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppColor.primary),
              ),
            ],
          ),
        ),
        const AppPadding(dividedBy: 4),
      ],
    );
  }
}
