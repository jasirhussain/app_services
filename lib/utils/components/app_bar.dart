// import 'package:flutter/material.dart';

// import '../../../utils/assets/values/app_assets.dart';
// import '../../../utils/assets/values/app_constants.dart';
// import '../../../utils/assets/values/color_scheme.dart';
// class CustomerAppBar extends StatelessWidget with PreferredSizeWidget {
//   final bool showMenu;
//   CustomerAppBar({
//     Key? key,
//     this.showMenu = true,
//   }) : super(key: key);
//   @override
//   Size get preferredSize => const Size.fromHeight(50.0);
//   @override
//   Widget build(BuildContext context) {
//     final canPop = ModalRoute.of(context)?.canPop ?? false;
//     return AppBar(
//       flexibleSpace: Container(
//         color: Colors.white,
//         // decoration: BoxDecoration(
//         //     border: Border.all(color: Colors.amber.shade300, width: 0.3),
//         //     borderRadius: const BorderRadius.only(
//         //         bottomLeft: Radius.circular(25),
//         //         bottomRight: Radius.circular(25)),
//         //     color: Colors.white),
//       ),
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       leading: showMenu
//           ? Center(
//               child: IconButton(
//                   splashRadius: 28,
//                   icon: Icon(Icons.menu, color: AppColor.background,size: 30,),
//                   color: AppColor.background,
//                   onPressed: () {
//                     // isLogged ? _userService.userFetch() : () {};
//                     Scaffold.of(context).openDrawer();
//                   }),
//             )
//           : canPop
//               ? BackButton(
//                   color: Theme.of(context).colorScheme.onPrimary,
//                 )
//               : null,
//       // title: Container(
//       //   padding: const EdgeInsets.only(
//       //     top: 40,
//       //     bottom: 5),
//       //   // width: AppConstants.defaultPadding * 2,
//       //   // height: AppConstants.defaultPadding * 1.8,
//       //   child: Text("Hi Jasir Hussain,\n How are You")
//       // ),
//       centerTitle: false,
//       // actions: [
//       //   IconButton(
//       //     onPressed: () {},
//       //     icon: const Icon(Icons.access_alarm_outlined),
//       //   ),
//       // ],
//     );
//   }
// }
