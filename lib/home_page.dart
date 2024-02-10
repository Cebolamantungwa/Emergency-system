import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text("Welcome,",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 20)),
              const SizedBox(
                height: 25,
              ),
              //used to separate widgets
              Card(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Text(
                          "Since there isn't a single emergency number in South Africa at the moment, it's critical that you have the appropriate contact information on hand to ensure a prompt response to your particular emergency and This application enable users to easily access emergency contacts.",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ]),
                ),
              ),

              Image.asset("assets/telephone_call.png",width:300, height:100),
              //what to do in an emergency
              const Text(
                "Before making a call",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              //Second paragraph
              Card(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Text(
                          "Please always confirm that there is a true emergency because blocking emergency lines may cause someone else to suffer for an extended period of time or possibly die.",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ]),
                ),
              ),

              Image.asset("assets/to_do_list.png",width:300, height:100),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Text(
                          "It is important to have the necessary details ready:\n-Patient's address or the incident's location.\n-Give landmarks if you are able to.",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ]),
                ),
              )
            ]),
      ),
    );
  }
}
