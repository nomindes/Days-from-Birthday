import 'package:flutter/material.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My Birthday")),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String? name;
    DateTime? birthday;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (newText) {
                name = newText;
              },
              decoration: InputDecoration(
                labelText: "名前",
                hintText: "名前",
                icon: Icon(Icons.account_circle),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              birthday = await showDatePicker(
                context: context,
                initialDate: DateTime(DateTime.now().year - 10),
                firstDate: DateTime(DateTime.now().year - 100),
                lastDate: DateTime(DateTime.now().year),
              );
            },
            child: new Text("誕生日選択"),
          ),
          ElevatedButton(
            onPressed: () {
              if (name != null && birthday != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Result()),
                );
                print(name);
                print(DateTime.now().difference(birthday!).inDays);
              }
            },
            child: Text("生まれてから何日目？"),
          ),
        ],
      ),
    );
  }
}
