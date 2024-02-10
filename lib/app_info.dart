import 'package:flutter/material.dart';

class AppInfo extends StatefulWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  State<AppInfo> createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Add a back button to the AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Add your back button functionality here
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(5),
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("SA Emergency Contacts",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20)),
            const SizedBox(
              height: 10,
            ),
            const Text("Version 1.0.0",
                style: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 25,
            ),
            Image.asset("assets/logo.png",width:300, height:100),
            const SizedBox(
              height: 10,
            ),
            Text("2023 - ${retrieveCurrentYear()}",
                style: const TextStyle(color: Colors.grey, fontSize: 14)),
          ],
        ),
      ),
    );
  }

  // Function to get the current year
  String retrieveCurrentYear() {
    DateTime current = DateTime.now();
    return current.year.toString();
  }
}
