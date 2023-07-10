import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("結果"),
      ),
      body: Column(
        children: [
          Text("誰かさんは生まれてから"),
          Text("30日目です"),
        ],
      ),
    );
  }
}
