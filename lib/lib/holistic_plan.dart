import 'package:flutter/material.dart';
import 'package:task_babynama/lib/thankyou_purchase.dart';

class HolisticPlanScreen extends StatefulWidget {
  @override
  _HolisticPlanScreenState createState() => _HolisticPlanScreenState();
}

class _HolisticPlanScreenState extends State<HolisticPlanScreen> {
  int selectedButtonIndex = 0; // Default to Button 1

  List<String> button1Text = [
    'Dedicated pediatrician to guide and support you with your child\'s specific needs',
    'Private WhatsApp group with your dedicated pediatrician.',
    'Unlimited free pediatric consultations 24X7.',
    'Instant answers on WhatsApp by Pediatricians (8AM-10PM).',
    'Comprehensive support and guidance for mother: postnatal care, personalized diet plan, emotional well-being and other health concerns.',
    'Free Specialist Consultations for baby & mother: Gynecologist, Dermatologist, Psychologist, Pediatrician, Nutritionist.',   
    'Free access to all our workshops: nutrition, weaning, lactation, postpartum yoga.'
  ];

  List<String> button2Text = [
    'Dedicated pediatrician to guide and support you with your child\'s specific needs',
    'Private WhatsApp group with your dedicated pediatrician.',
    'Unlimited free pediatric consultations 24X7.',
    'Instant answers on WhatsApp by Pediatricians (8AM-10PM).',
    'Comprehensive support and guidance for mother: postnatal care, personalized diet plan, emotional well-being and other health concerns.',
    'Free Specialist Consultations for baby & mother: Gynecologist, Dermatologist, Psychologist, Pediatrician, Nutritionist.',
    'Free access to all our workshops: nutrition, weaning, lactation, postpartum yoga.'
  ];


  String getPriceText() {
    if (selectedButtonIndex == 0) {
      return '₹3999 per month';
    } else if (selectedButtonIndex == 1) {
      return '₹9999 per 3 months';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 60.0), // Adjust this value as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 35.0, left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context); 
                          },
                        ),
                        Text(
                          'Holistic Care',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.shopping_bag),
                          onPressed: () {
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 360,
                    height: 300, 
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage('assets/doctorcarebaby.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Holistic Care',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Exceptional Personalized Care for Child and Mother\'s Well-being.',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedButtonIndex = 0;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: selectedButtonIndex == 0
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                          onPrimary: Colors.black,
                        ),
                        child: Text('1 Month'),
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedButtonIndex = 1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: selectedButtonIndex == 1
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                          onPrimary: Colors.black,
                        ),
                        child: Text('3 Months'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: selectedButtonIndex == 0
                          ? button1Text
                              .map((text) => Column(
                                    children: [
                                      SizedBox(height: 12.0),
                                      Text(
                                        '• $text',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ))
                              .toList()
                          : selectedButtonIndex == 1
                              ? button2Text
                                  .map((text) => Column(
                                        children: [
                                          SizedBox(height: 12.0),
                                          Text(
                                            '• $text',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ))
                                  .toList()
                              : [],
                    ),
                  ),
                  SizedBox(height: 25.0),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  getPriceText(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThankYouScreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 10.0),
                  child: Text(
                    'Buy',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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

