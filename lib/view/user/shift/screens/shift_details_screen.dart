import 'package:flutter/material.dart';

import '../../../../utils/assets/values/app_constants.dart';
import '../../../../utils/assets/values/app_padding.dart';


class ShiftDetailsScreen extends StatefulWidget {
  const ShiftDetailsScreen({super.key});

  @override
  State<ShiftDetailsScreen> createState() => _ShiftDetailsScreenState();
}

class _ShiftDetailsScreenState extends State<ShiftDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shifts"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.defaultPadding / 2,
            vertical: AppConstants.defaultPadding / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "worked Time",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const AppPadding(dividedBy: 2),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.pink.shade100.withOpacity(0.2),
                        // border: Border.all(
                        //   color: Colors.black
                        // ),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppConstants.defaultPadding / 2,
                        vertical: AppConstants.defaultPadding / 2),
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 200,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  child: Text(
                                "monday",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                              )),
                              Text(
                                "12/07",
                                style: Theme.of(context).textTheme.labelLarge!
                                    .copyWith(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        AppPadding(dividedBy: 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Restrurent",
                             style: Theme.of(context).textTheme.labelLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            ),),
                                            Text("10 am to 6 pm ",
                             style: Theme.of(context).textTheme.labelLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            ),),
                                            Text("8 Hours",
                             style: Theme.of(context).textTheme.labelLarge!
                                        .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            ),),
                                            Text("81 pounds",
                             style: Theme.of(context).textTheme.labelLarge!
                                        .copyWith(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                            ),),
                          ],
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
