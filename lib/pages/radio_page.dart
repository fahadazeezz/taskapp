import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  final _nameController = TextEditingController();
  String _name = '';
  String _selectedGender = "Male";
  String _selectedCourse = "Flutter";
  String _selectedStudyMode = "Online";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Admission Form")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 25,
                ),
                child: TextFormField(
                  controller: _nameController,
                  validator: (value) => _name,
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: "Enter your name",
                    labelText: "Name",
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Select Gender",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Male",
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  const Text("Male"),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Female",
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  const Text("Female"),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Other",
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  const Text("Other"),
                ],
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Selected Gender:$_selectedGender",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Select Course",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Flutter",
                    groupValue: _selectedCourse,
                    onChanged: (value) {
                      setState(() {
                        _selectedCourse = value!;
                      });
                    },
                  ),
                  const Text("Flutter"),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Python",
                    groupValue: _selectedCourse,
                    onChanged: (value) {
                      setState(() {
                        _selectedCourse = value!;
                      });
                    },
                  ),
                  const Text("Python"),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Java",
                    groupValue: _selectedCourse,
                    onChanged: (value) {
                      setState(() {
                        _selectedCourse = value!;
                      });
                    },
                  ),
                  const Text("Java"),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "UIUX",
                    groupValue: _selectedCourse,
                    onChanged: (value) {
                      setState(() {
                        _selectedCourse = value!;
                      });
                    },
                  ),
                  const Text("UIUX"),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Selected Course:$_selectedCourse",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Select Study Mode",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Online",
                    groupValue: _selectedStudyMode,
                    onChanged: (value) {
                      setState(() {
                        _selectedStudyMode = value!;
                      });
                    },
                  ),
                  const Text("Online"),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Offline",
                    groupValue: _selectedStudyMode,
                    onChanged: (value) {
                      setState(() {
                        _selectedStudyMode = value!;
                      });
                    },
                  ),
                  const Text("Offline"),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: "Hybrid",
                    groupValue: _selectedStudyMode,
                    onChanged: (value) {
                      setState(() {
                        _selectedStudyMode = value!;
                      });
                    },
                  ),
                  const Text("Hybrid"),
                ],
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Selected Study Mode:$_selectedStudyMode",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    debugPrint("Name:$_name");
                    debugPrint("Selected Gender:$_selectedGender");
                    debugPrint("Selected Course:$_selectedCourse");
                    debugPrint("Selected Study Mode:$_selectedStudyMode");
                  });
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
