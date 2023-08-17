import 'package:flutter/material.dart';
import 'package:task_babynama/categories_section.dart';
import 'package:task_babynama/constants.dart';
import 'package:task_babynama/home_screen.dart';
import 'package:task_babynama/lib/basic_plan.dart';
import 'package:task_babynama/lib/holistic_plan.dart';
import 'package:task_babynama/lib/prime_plan.dart';
import 'package:task_babynama/lib/thankyou_purchase.dart';
import 'package:task_babynama/signin_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen 1',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          button: TextStyle(color: Colors.black), // Adjust button text color
          bodyText1: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.7,
              child: Image.asset(
                "assets/person.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 70), // Add spacing from top
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "B ",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            color: kPrimaryColor,
                          ),
                    ),
                    TextSpan(
                      text: "A ",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            color: kPrimaryColor,
                          ),
                    ),
                    TextSpan(
                      text: "B ",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            color: kPrimaryColor,
                          ),
                    ),
                    TextSpan(
                      text: "Y ",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            color: kPrimaryColor,
                          ),
                    ),
                    TextSpan(
                      text: "N ",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            color: kPrimaryColor,
                          ),
                    ),
                    TextSpan(
                      text: "A ",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            color: kPrimaryColor,
                          ),
                    ),
                    TextSpan(
                      text: "M ",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            color: kPrimaryColor,
                          ),
                    ),
                    TextSpan(
                      text: "A",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            color: kPrimaryColor,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Add spacing between titles
              Text(
                "Nurturing Tiny Lives",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 20), // Add spacing after titles
              Expanded(child: Container()), // Expand to push text and dots to the bottom
              Text(
                "Explore our Comprehensive\n Baby Care Plans",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
              ),
              SizedBox(height: 20), // Add spacing before button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 5, color: Colors.white),
                  SizedBox(width: 5),
                  Icon(Icons.circle, size: 5, color: Colors.white),
                  SizedBox(width: 5),
                  Icon(Icons.circle, size: 5, color: Colors.white),
                ],
              ),
              SizedBox(height: 20), // Add spacing between dots and button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignInScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: kPrimaryColor,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "START EXPLORING",
                        style: Theme.of(context).textTheme.button!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Add spacing after button
            ],
          ),
        ],
      ),
    );
  }
}
