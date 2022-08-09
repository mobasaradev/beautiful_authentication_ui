import 'package:auth_ui/constants.dart';
import 'package:flutter/material.dart';

import 'sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackGroundColor,
        textTheme: const TextTheme(
          headline4:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          button: TextStyle(color: kPrimaryColor),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            ),
          ),
        
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/splash.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "BAKING LESSONS \n",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      TextSpan(
                        text: "MASTER THE ART OF BAKING",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignIn(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "START LEARNING",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.black),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
