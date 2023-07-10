import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String name;
  int dayFromBirthday;
  Result({required this.name, required this.dayFromBirthday});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("結果"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/birthday.png'),
          Text(
            "${name}さんは生まれてから",
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "今日で",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "${dayFromBirthday}日目",
                style: TextStyle(fontSize: 50),
              ),
              Text(
                "です",
                style: TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
