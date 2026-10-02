import 'package:flutter/material.dart';

class TogglebuttonPage extends StatefulWidget {
  const TogglebuttonPage({super.key});

  @override
  State<TogglebuttonPage> createState() => _TogglebuttonPageState();
}

class _TogglebuttonPageState extends State<TogglebuttonPage> {
  bool notification = true;
  bool darkmode = true;
  bool sound = true;
  bool autoupdate = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Switch(
                activeThumbColor: Colors.blue,
                value: notification,
                onChanged: (bool value) {
                  setState(() {
                    notification = value;
                  });
                },
              ),
              notification ? Text("Notification On") : Text("Notification Off"),
              const SizedBox(height: 20),
              Switch(
                activeThumbColor: Colors.black,
                value: darkmode,
                onChanged: (bool value) {
                  setState(() {
                    darkmode = value;
                  });
                },
              ),
              darkmode ? Text("Darkmode On") : Text("Darkmode Off"),
              const SizedBox(height: 20),
              Switch(
                activeThumbColor: Colors.green,
                value: sound,
                onChanged: (bool value) {
                  setState(() {
                    sound = value;
                  });
                },
              ),
              sound ? Text("Sound On") : Text("Sound Off"),
              const SizedBox(height: 20),
              Switch(
                activeThumbColor: Colors.red,
                value: autoupdate,
                onChanged: (bool value) {
                  setState(() {
                    autoupdate = value;
                  });
                },
              ),
              autoupdate ? Text("AutoUpdate On") : Text("AutoUpdate Off"),
            ],
          ),
        ),
      ),
    );
  }
}
