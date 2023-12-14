import 'package:app_services/utils/assets/values/app_padding.dart';
import 'package:app_services/view/user/shift/screens/shift_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class ShiftSucsessScreen extends StatefulWidget {
  const ShiftSucsessScreen({super.key});

  @override
  State<ShiftSucsessScreen> createState() => _ShiftSucsessScreenState();
}

class _ShiftSucsessScreenState extends State<ShiftSucsessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppPadding(multipliedBy: 3,),
                SizedBox(
                  height: 150,
                  width: 200,
                  child: LottieBuilder.asset("assets/images/done.json"),
                ),
                AppPadding(),
                Text(
                  "your shift is Updated",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                AppPadding(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ShiftDetailsScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)
                    ),
                      alignment: Alignment.center,
                      height: 50,
                      
                      width: 200,
                      child: Text(
                        "Go to Shifts",
                        style: Theme.of(context).textTheme.bodyLarge,
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
