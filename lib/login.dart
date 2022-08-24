import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff344955),
      appBar: AppBar(
        backgroundColor: Color(0xff232F34),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "LOGIN",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 80,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Email",
                fillColor: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Passworld",
                fillColor: Colors.white),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("LOGIN"),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff232F34),
              minimumSize: Size(300, 45),
            ),
          )
        ],
      ),
    );
  }
}
