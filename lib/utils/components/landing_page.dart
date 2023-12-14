import 'package:flutter/material.dart';

import '../../view/user/home/screens/homescreen.dart';
import '../../view/user/profile/my_profile_screen.dart';
import '../../view/user/shift/screens/shift_details_screen.dart';
import '../assets/values/app_padding.dart';
import '../assets/values/color_scheme.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PageController pageController = PageController();
  int _selectedIndex = 0;

  final _pages = const[
    HomeScreen(),
    ShiftDetailsScreen(),
    MyProfile()
   

    // const HomeScreen(),
    // const SearchScreen(),
    // const MyProfile(),
    // AllPages(

    // ),
  ];
  void onTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Future getCustomer() async {
  //   await FirebaseFirestore.instance
  //       .collection("Students")
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .get()
  //       .then((DocumentSnapshot snapshot) {
  //     if (snapshot.exists) {
  //       customerModel = CustomerModel.fromDocument(snapshot);
  //     }
  //   });
  // }

  @override
  void initState() {
    // getCustomer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 4, spreadRadius: 2, color: Colors.grey.shade300)
          ],
          borderRadius: BorderRadius.circular(20),
          color: AppColor.surface,
        ),
        child: BottomNavigationBar(
          // unselectedItemColor: AppColor.secondaryLight,
          elevation: 0,
          fixedColor: AppColor.background,
          // unselectedLabelStyle: const TextStyle(color: Colors.black),
          selectedLabelStyle:  const TextStyle(color: Colors.black),
          backgroundColor: Colors.amber,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_rounded), label: 'Worked Time'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          onTap: onTapped,
        ),
      ),
    );
  }

  Widget _buildBottomNavBarItem(
    IconData icon,
    String text,
    int index,
  ) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 5,
          decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.amber,
                size: 30,
              ),
              const AppPadding(dividedBy: 6),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
