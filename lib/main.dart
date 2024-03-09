import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Stack(
        children: [
          Image.asset(
            'spiderman.png', // Replace with your image path
            height: 810,
            width: 1440,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Color(0xFF35374B),
            body: Center(
              child: Container(
                height: 600,
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF344955),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 42,
                            color: Colors.white),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 80),
                          child: Text("Email",
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 80,
                            right: 80,
                            bottom: 80,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Email id",
                              fillColor: Colors.amberAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, left: 80),
                          child: Text("Password",
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80.0, right: 80, bottom: 80),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              fillColor: Colors.amberAccent,
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFF50727B)),
                            height: 70,
                            width: 200,
                            child: TextButton(
                                onPressed: onPressed,
                                child: Text("Submit",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
