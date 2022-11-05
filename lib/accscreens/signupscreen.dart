import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:SpawnPoint/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

void main(List<String> args) {
  runApp(const signupscreen());
}

class signupscreen extends StatelessWidget {
  const signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
          fontFamily: 'RedHatDisplay',
          useMaterial3: true,
          brightness: Brightness.light,
          primarySwatch: Colors.purple,
          primaryColor: Colors.white,
        ),
        dark: ThemeData(
          fontFamily: 'RedHatDisplay',
          useMaterial3: true,
          brightness: Brightness.dark,
          primarySwatch: Colors.purple,
          primaryColor: Colors.white,
        ),
        initial: AdaptiveThemeMode.system,
        builder: ((light, dark) => MaterialApp(
              home: Scaffold(
                  appBar: AppBar(
                    title: const Text("Login to SpawnPoint"),
                    leading: BackButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const app()));
                      },
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Center(
                        child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                              icon: Icon(FeatherIcons.user),
                              border: OutlineInputBorder(),
                              labelText: "Username"),
                        ),
                        const TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                              icon: Icon(FeatherIcons.mail),
                              border: OutlineInputBorder(),
                              labelText: "Email"),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(FeatherIcons.lock),
                              border: OutlineInputBorder(),
                              labelText: "Password"),
                        ),
                      ],
                    )),
                  )),
              theme: light,
              darkTheme: dark,
            )));
  }
}
