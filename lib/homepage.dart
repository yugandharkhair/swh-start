// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();

  void clearText() {
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: clearText, child: const Text("Upper Valve")),
            ElevatedButton(onPressed: () {}, child: const Text("Lower Valve")),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Readings",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text("Current: "),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text("Voltage/Temp: "),
                  ),
                ],
              ),
            ),
            const Text(
              "Flow",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              width: 170,
              child: TextField(
                cursorColor: Theme.of(context).cursorColor,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    color: Color(0xFF6200EE),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
