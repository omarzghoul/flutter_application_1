import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF87373),
        drawer: Drawer(backgroundColor: Color(0xff3DA3C9)),
        appBar: AppBar(
          backgroundColor: Color(0xffF24646),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(16),
                width: double.infinity,
                color: Color(0xffFBA2A2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "25:00",
                      style: TextStyle(fontSize: 80, color: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("START"),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffCC5C5C),
                        minimumSize: Size(100, 45),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tasks",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Colors.white,
            ),
            Expanded(
              child: ListView(
                children: [
                  customTask("Task1"),
                  customTask("Task2"),
                  customTask("Task3"),
                  customTask("Task4"),
                  customTask("Task5"),
                  customTask("Task6"),
                  customTask("Task7"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(4),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_box,
                      color: Color(0xffF87373),
                    ),
                    Text(
                      "Add Task",
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF9BBBB),
                  minimumSize: Size(double.infinity, 45),
                ),
              ),
            )
          ],
        ));
  }

  Widget customTask(String task) {
    return Container(
      height: 60,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(task),
              Icon(
                Icons.more_vert,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
