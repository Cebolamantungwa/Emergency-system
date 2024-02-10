import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailsDisplayer extends StatelessWidget {
  EmailsDisplayer({super.key});

  List<Department> departments = [
    Department(department_name: "health hotline ", email_address: "healthhotline@Health.gov.za"),
    Department(department_name: "Head Office(Missing Persons)", email_address: "missings.hq@saps.gov.za"),
    Department(department_name: "Eastern Cape(Missing Persons)", email_address: "missing.eastcape@saps.gov.za"),
    Department(department_name: "Free State(Missing Persons)", email_address: "fs.missingpersons@saps.gov.za"),
    Department(department_name: "Gauteng(Missing Persons)", email_address: " missing.gauteng@saps.gov.za"),
    Department(department_name: "Kwazulu-Natal(Missing Persons)", email_address: "kznmissingpersons@saps.gov.za"),
    Department(department_name: "Limpopo(Missing Persons)", email_address: "Lim.provhead.detectiveservices@saps.gov.za"),
    Department(department_name: "Mpumalanga(Missing Persons)", email_address: "mp.dsmp@saps.gov.za"),
    Department(department_name: "Northern Cape(Missing Persons)", email_address: "DickDL@saps.gov.za"),
    Department(department_name: "North West(Missing Persons)", email_address: "nw.det.missing@saps.gov.za"),
    Department(department_name: "Western Cape(Missing Persons)", email_address: " missing.westcape@saps.gov.za"),

//SAPS Service complaints
    Department(department_name: "Eastern Cape(SAPS Service complaints)", email_address: "EC.ServiceComplaints@saps.gov.za"),
    Department(department_name: "Free State(SAPS Service complaints)", email_address:"FS.ServiceComplaints@saps.gov.za"),
    Department(department_name: "Gauteng(SAPS Service complaints)", email_address: "GP.ServiceComplaints@saps.gov.za"),
    Department(department_name: "Kwazulu-Natal(SAPS Service complaints)", email_address: "KZN.ServiceComplaints@saps.gov.za"),
    Department(department_name: "Limpopo(SAPS Service complaints)", email_address: "LIM.ServiceComplaints@saps.gov.za"),
    Department(department_name: "Mpumalanga(SAPS Service complaints)", email_address: "MP.ServiceComplaints@saps.gov.za"),
    Department(department_name: "Northern Cape(SAPS Service complaints)", email_address: "NC.ServiceComplaints@saps.gov.za"),
    Department(department_name: "North West(SAPS Service complaints)", email_address: "NW.ServiceComplaints@saps.gov.za"),
    Department(department_name: "Western Cape(SAPS Service complaints)", email_address: "WC.ServiceComplaints@saps.gov.za"),

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
                  subtitle: Text(department.email_address),
                  trailing: IconButton(
                    onPressed: () async {
                      Uri mail = Uri.parse('mailto:${department.email_address}?subject=Subject &body=');
                      launchUrl(mail);


                    },
                    icon: Icon(Icons.send),
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
  final String email_address;

  Department({
    required this.department_name,
    required this.email_address,
  });
}
