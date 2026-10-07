import 'dart:developer';

import 'package:flutter/material.dart';

class Dropdownbutton extends StatefulWidget {
  const Dropdownbutton({super.key});

  @override
  State<Dropdownbutton> createState() => _DropdownbuttonState();
}

class _DropdownbuttonState extends State<Dropdownbutton> {
  final _nameController = TextEditingController();
  List<String> courseName = [
    "Flutter Development",
    "Backend Development",
    "UI/UX Design",
    "Data Science",
    "Cyber Security",
  ];
  List<String> durationTime = ["3 Months", "6 Months", "1 Year"];
  List<String> modeName = ["Online", "Offline", "Hybrid"];

  String selectedCourse = 'Flutter Development';
  String selectedDuration = '3 Months';
  String selectedMode = 'Online';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // StudentName Textfield
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Student Name",
              ),
            ),
          ),

          // Course Options
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: DropdownButton<String>(
              isExpanded: true,
              value: selectedCourse,
              items: courseName
                  .map(
                    (course) => DropdownMenuItem<String>(
                      value: course,
                      child: Text(course),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCourse = value!;
                });
              },
            ),
          ),
          // Duration Options
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: DropdownButton<String>(
              isExpanded: true,
              value: selectedDuration,
              items: durationTime
                  .map(
                    (time) => DropdownMenuItem<String>(
                      value: time,
                      child: Text(time),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedDuration = value!;
                });
              },
            ),
          ),
          //Mode Options
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: DropdownButton<String>(
              isExpanded: true,
              value: selectedMode,
              items: modeName
                  .map(
                    (mode) => DropdownMenuItem<String>(
                      value: mode,
                      child: Text(mode),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedMode = value!;
                });
              },
            ),
          ),
          // register
          ElevatedButton(
            onPressed: () {
              log(_nameController.text);
              log(selectedCourse);
              log(selectedDuration);
              log(selectedMode);
              _nameController.clear();
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
