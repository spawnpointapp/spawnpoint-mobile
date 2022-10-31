import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.highContrastDark(),
        useMaterial3: true,
      ),
      title: "SpawnPoint",
      home: Scaffold(
        appBar: AppBar(title: const Text("SpawnPoint")),
        body: const mainlayout(),
      ),
    );
  }
}

class mainlayout extends StatelessWidget {
  const mainlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Card(child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.code),
              title: Text("Welcome to SpawnPoint"),
              subtitle: Text("This project is being ctively Worked on (See Button Below)"),

            )
          ],
        ),
        )
        ),
        Card(
            child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.warning),
                title: Text("SpawnPoint is being Constructed"),
                subtitle: Text(
                    "The source code is being Rewritten in flutter, This is NOT a Working project"),
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
