import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NumbersDisplayer extends StatelessWidget {
  NumbersDisplayer({super.key});

  List<Department> departments = [
    Department(department_name: "Emergency response number", number: "10111"),
    Department(department_name: "Crime stop", number: "08600 10111"),
    Department(department_name: "Ambulance", number: "10177"),
    Department(department_name: "National Health hotline", number: "0800 029 999"),
    Department(department_name: "Cell Phone Emergency", number: "112"),
    Department(
        department_name: "Disaster Management Center", number: "012 848 4602"),
    Department(
        department_name: "Military police crime line", number: "0800 567 567"),
    Department(
        department_name: "Police service Complaints Centre",
        number: "0800 333 177"),
    Department(department_name: "Suicide", number: "0800 567 567"),
    Department(department_name: "Rape", number: "0214 479 762"),
    Department(department_name: "Mental health", number: "0112 34 4837"),
    Department(department_name: "Depression", number: "0800 121 314"),
    Department(department_name: "Childline", number: "0800 055 555"),
    Department(department_name: "Child emergency line", number: "0800 123 321"),
    Department(department_name: "Stop Gender Violence", number: "0800 150 150"),
    Department(
        department_name: "Family relationship advice line",
        number: "011 975 7107"),
    //Missing Persons
    Department(
        department_name: "Head Office(Missing Person)", number: "012 393 2001"),
    Department(
        department_name: "Eastern Cape(Missing Person)",
        number: "041 394 6978"),
    Department(
        department_name: "Free State(Missing Person)", number: "051 503 2846"),
    Department(
        department_name: "Gauteng(Missing Person)", number: "011 670 6316"),
    Department(
        department_name: "KwaZulu-Natal(Missing Person)",
        number: "031 3256718"),
    Department(
        department_name: "Limpopo(Missing Person)", number: "015 290 6000"),
    Department(
        department_name: "Mpumalanga(Missing Person)", number: "013 762 4391"),
    Department(
        department_name: "Northern Cape(Missing Person)",
        number: "053 839 2822"),
    Department(
        department_name: "North West(Missing Person)", number: "018 299 7722"),
    Department(
        department_name: "Western Cape(Missing Person)",
        number: "021 467 8236"),
    Department(department_name: "Alcohol Anonymous", number: "086 435 722"),
    Department(department_name: "Narcotic Anonymous", number: "086 100 6962"),
    //Poison numbers
    Department(
        department_name: "National Red Cross(Poison Emergency)",
        number: "021 689 5227"),
    Department(
        department_name: "Tygerberg(Poison Emergency)", number: "021 931 6129"),
    Department(
        department_name: "KwaZulu-Natal(Poison Emergency)",
        number: "080 033 3444"),
    Department(
        department_name: "Bloemfontein(Poison Emergency)",
        number: "082 491 0160"),
    //Rescue numbers
    Department(department_name: "Mountain Rescue", number: "021 948 9900"),
    Department(
        department_name: "Cape Town(Sea Rescue)", number: "021 449 3500"),
    Department(department_name: "Saldanha(Sea Rescue)", number: "022 714 1726"),
    Department(
        department_name: "Mossel bay(Sea Rescue)", number: "044 604 6271"),
    Department(department_name: "Aviation Rescue", number: "083 1999"),
    //Animals
    Department(department_name: "Animal Welfare", number: "021 534 6426"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,

      body: ListView.builder(
          itemCount: departments.length,
          itemBuilder: (context, index) {
            final department = departments[index];
            return Card(
              child: Column(children: <Widget>[
                ListTile(
                  title: Text(department.department_name),
                  subtitle: Text(department.number),
                  trailing: IconButton(
                    onPressed: () async {
                      final Uri url = Uri(
                        scheme: 'tel',
                        path: department.number,
                      );

                      launchUrl(url);
                    },
                    icon: Icon(Icons.phone),
                  ),
                ),
              ]),
            );
          }),
    );
  }
}

class Department {
  final String department_name;
  final String number;

  Department({
    required this.department_name,
    required this.number,
  });
}
