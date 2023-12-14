import 'package:app_services/utils/assets/values/app_constants.dart';
import 'package:app_services/view/user/add_shift/screens/add_shift_screen.dart';
import 'package:flutter/material.dart';

import '../../../../utils/assets/values/app_padding.dart';
import '../../../../utils/components/app_bar.dart';
import '../../../../utils/components/drawer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomerAppBar(),
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.defaultPadding / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Positioned(
                //   top: 0,
                //   bottom: 15,
                //   child: IconButton(
                //     onPressed: () {
                //        Navigator.push(context, MaterialPageRoute(builder: (context) =>DrawerScreen()));
                //     },
                //     icon: Icon(
                //       Icons.menu_open_outlined,
                //       size: 40,
                //     ),
                //   ),
                // ),
                AppPadding(dividedBy: 4),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Mr Jasir Hussain 😀",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Good Morning",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const AppPadding(
              dividedBy: 2,
            ),
            Container(
              // height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.cyan.shade100.withOpacity(0.3),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding,
                  vertical: AppConstants.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Last Shift",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  const AppPadding(dividedBy: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "20/12/2022",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "sunday",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Text(
                    "8 Hours",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text(
                    "You Earend 81 pounds...",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const AppPadding(),
            Card(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 80,
                child: Row(
                  children: [
                    Text(
                      "VIEW YOUR SHIFT",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            const AppPadding(),
            Text(
              "ADD YOUR SHIFT",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const AppPadding(
              dividedBy: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddShiftScreen()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 100,
                child: const Icon(Icons.add_box_outlined,
                    size: 50, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
