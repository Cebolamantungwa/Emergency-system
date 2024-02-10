import 'dart:io';
import 'package:flutter/material.dart';
import 'app_info.dart';
import 'home_page.dart';
import 'number_list.dart';
import 'emails.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAEC',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'SAEC'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  // var currentSelectedMenuPage = DrawerSections.home;
  List<Widget> pages = [
    const HomePage(),
    NumbersDisplayer(),
    EmailsDisplayer()
  ];
  @override
  void initState() {
    super.initState();
    //Permissions call method
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          PopupMenuButton<MenuValues>(
              itemBuilder: (BuildContext context) => [
                    const PopupMenuItem(
                      value: MenuValues.appInfo,
                      child: Text('App Info'),
                    ),
                    const PopupMenuItem(
                      value: MenuValues.Exit,
                      child: Text('Exit'),
                    ),
                  ],
              onSelected: (value) {
                switch (value) {
                  case MenuValues.appInfo:
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) => const AppInfo()));
                    break;
                  case MenuValues.Exit:
                    showPopup(context);
                    break;

                }
              }),
        ],
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "home"),
          NavigationDestination(icon: Icon(Icons.phone), label: "Numbers"),
          NavigationDestination(icon: Icon(Icons.email), label: "Emails"),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }

  void showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Exit'),
          content: const Text('Are you sure you want to exit the app?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Close the popup when the "OK" button is pressed
                exit(0);
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                // Close the popup when the "OK" button is pressed
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }
}

enum MenuValues {
  appInfo,
  Exit,
}



