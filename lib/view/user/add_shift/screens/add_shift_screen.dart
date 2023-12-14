import 'dart:developer';



import 'package:app_services/utils/assets/values/app_padding.dart';
import 'package:app_services/view/user/add_shift/screens/shift_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../utils/assets/values/app_constants.dart';
import '../../../authantication/widgets/neumorphicTextFeild.dart';

class AddShiftScreen extends StatefulWidget {
  const AddShiftScreen({super.key});

  @override
  State<AddShiftScreen> createState() => _AddShiftScreenState();
}

class _AddShiftScreenState extends State<AddShiftScreen> {
  TextEditingController dateController = TextEditingController();
  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();
  TextEditingController breakController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  TextEditingController NoteController = TextEditingController();
  DateTime _startDateTime = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String category = 'Event';

  var categoryList = [
    "Event",
    "Bar",
    "Restaurants",
    "IT & Software",
    "Office ",
    "construction",
    "Warehouse",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text("Add Your shift"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.defaultPadding,
            vertical: AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildText(context, "Department"),
            const AppPadding(dividedBy: 3),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropDown(
                  onChanged: (value) {
                    setState(() {
                      category = value.toString();
                      log(category);
                    });
                  },
                  showUnderline: false,
                  isExpanded: true,
                  hint: const Text("Select Category"),
                  items: categoryList,
                ),
              ),
            ),
            const AppPadding(dividedBy: 3),
            _buildText(context, "Date"),
            const AppPadding(dividedBy: 3),
            Container(
              height: 50,
              child: NeumorphicTextFeild(
                read: true,
                lines: 1,
                name: "Choose Date",
                hint: "Choose ",
                controller: dateController,
                icon: IconButton(
                  onPressed: () async {
                    DateTime? _newDateTime = await showDatePicker(
                        context: context,
                        initialDate: _startDateTime,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(3000));
                    if (_newDateTime != null) {
                      print(_newDateTime);
                      setState(() {
                        _startDateTime = _newDateTime;
                        dateController.text =
                            '${_startDateTime.year.toString()}-${_startDateTime.month.toString()}-${_startDateTime.day.toString()}';
                      });
                    }
                  },
                  icon: const Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const AppPadding(dividedBy: 3),
            _buildText(context, "Start Time"),
            Container(
              height: 50,
              child: Neumorphic(
                style: const NeumorphicStyle(
                  color: Colors.white,
                  depth: -3,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: endController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppConstants.defaultPadding / 2,
                      vertical: AppConstants.defaultPadding / 6,
                    ),
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    labelText: "Enter the start time",

                    labelStyle: TextStyle(color: Colors.black),
                    // suffixIcon: icon,
                  ),
                  maxLines: 4,
                ),
              ),
            ),
            const AppPadding(dividedBy: 3),
            _buildText(context, "End Time"),
            const AppPadding(dividedBy: 3),
            SizedBox(
              height: 50,
              child: Neumorphic(
                style: const NeumorphicStyle(
                  color: Colors.white,
                  depth: -3,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: breakController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppConstants.defaultPadding / 2,
                      vertical: AppConstants.defaultPadding / 6,
                    ),
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    labelText: "Enter the end time",

                    labelStyle: TextStyle(color: Colors.black),
                    // suffixIcon: icon,
                  ),
                  maxLines: 4,
                ),
              ),
            ),
            const AppPadding(dividedBy: 3),
            _buildText(context, "Break(In hour)"),
            const AppPadding(dividedBy: 3),
            Container(
              height: 50,
              child: Neumorphic(
                style: const NeumorphicStyle(
                  color: Colors.white,
                  depth: -3,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: breakController,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: AppConstants.defaultPadding / 2,
                      vertical: AppConstants.defaultPadding / 6,
                    ),
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    labelText: "Enter the break",

                    labelStyle: const TextStyle(color: Colors.black),
                    // suffixIcon: icon,
                  ),
                  maxLines: 4,
                ),
              ),
            ),
            const AppPadding(dividedBy: 3),
            _buildText(context, "worked Hours"),
            const AppPadding(dividedBy: 3),
            SizedBox(
              height: 50,
              child: Neumorphic(
                style: const NeumorphicStyle(
                  color: Colors.white,
                  depth: -3,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: totalController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppConstants.defaultPadding / 2,
                      vertical: AppConstants.defaultPadding / 6,
                    ),
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    labelText: "Enter the Total Hour ",

                    labelStyle: TextStyle(color: Colors.black),
                    // suffixIcon: icon,
                  ),
                  maxLines: 4,
                ),
              ),
            ),
            const AppPadding(dividedBy: 3),
            _buildText(context, "Notes"),
            const AppPadding(dividedBy: 3),
            SizedBox(
              height: 200,
              child: Neumorphic(
                style: const NeumorphicStyle(
                  color: Colors.white,
                  depth: -3,
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: NoteController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppConstants.defaultPadding / 2,
                      vertical: AppConstants.defaultPadding / 6,
                    ),
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                    labelText: "Enter the Notes ",

                    labelStyle: TextStyle(color: Colors.black),
                    // suffixIcon: icon,
                  ),
                  maxLines: 4,
                ),
              ),
            ),
            const AppPadding(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShiftSucsessScreen()));
              },
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 50,
                  width: 100,
                  child: Text(
                    "Add",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildText(BuildContext context, String name) {
    return Text(name + ":",
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 18));
  }
}
