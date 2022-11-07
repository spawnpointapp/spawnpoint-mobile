import 'package:flutter/material.dart';
import "accscreens/loginscreen.dart";
import "accscreens/signupscreen.dart";
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  runApp(const app());
}

class app extends StatelessWidget {
  const app({super.key});
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
          fontFamily: 'RedHatDisplay',
          useMaterial3: true,
          brightness: Brightness.light,
          primarySwatch: Colors.purple,
          primaryColor: const Color.fromARGB(255, 233, 30, 182),
        ),
        dark: ThemeData(
          fontFamily: 'RedHatDisplay',
          useMaterial3: true,
          brightness: Brightness.dark,
          primarySwatch: Colors.purple,
          primaryColor: const Color.fromARGB(255, 233, 30, 182),
        ),
        initial: AdaptiveThemeMode.system,
        builder: ((light, dark) => MaterialApp(
              title: "SpawnPoint",
              home: Scaffold(
                appBar: AppBar(title: const Text("")),
                body: const mainlayout(),
              ),
              theme: light,
              darkTheme: dark,
            )));
  }
}

class mainlayout extends StatelessWidget {
  const mainlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const signupscreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 233, 30, 182)),
                      child: const Text(
                        "Create an account",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const loginscreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 233, 30, 182)),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
