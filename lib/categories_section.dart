import 'package:flutter/material.dart';
import 'package:task_babynama/lib/basic_plan.dart';
import 'package:task_babynama/lib/holistic_plan.dart';
import 'package:task_babynama/lib/prime_plan.dart';

class CategoriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryContainer(
            title: 'BASIC CARE',
            description: 'Reliable pediatric care within 15 minutes ...',
            color: Color(0xFF000000),
            imageName: 'black&whitebabypic.jpg',
            descriptionStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            descriptionOffset: Offset(0, 8),
            buttonLabel: 'Explore Basic Plan',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BasicPlanScreen()),
              );
            },
          ),
          CategoryContainer(
            title: 'PRIME CARE',
            description: 'Comprehensive care for your child\'s health &  development ...',
            color: Color(0xFF000000),
            imageName: 'teddybabypic.jpg',
            descriptionStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            descriptionOffset: Offset(0, 15), 
            buttonLabel: 'Explore Prime Plan',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrimePlanScreen()),
              );
            },
          ),
          CategoryContainer(
            title: 'HOLISTIC CARE',
            description: 'Exceptional Personalized Care for Child and Mother\'s Well-being ...',
            color: Color(0xFF000000),
            imageName: 'doctorcarebaby.jpg',
            descriptionStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            descriptionOffset: Offset(0, 12), 
            buttonLabel: 'Explore Holistic Plan',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HolisticPlanScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final String imageName;
  final TextStyle descriptionStyle;
  final Offset descriptionOffset;
  final String buttonLabel;
  final VoidCallback onTap;

  CategoryContainer({
    required this.title,
    required this.description,
    required this.color,
    required this.imageName,
    required this.descriptionStyle,
    this.descriptionOffset = Offset.zero,
    required this.buttonLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 300,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Theme.of(context).primaryColor, width: 2.0),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              top: 0.0,
              bottom: 80.0,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/$imageName',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 15.0,
              left: 15.0,
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  shape: BoxShape.rectangle,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15.0,
              right: 15.0,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  shape: BoxShape.rectangle,
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            Positioned(
              top: 55.0, 
              right: 15.0,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  shape: BoxShape.rectangle,
                ),
                child: Icon(
                  Icons.shopping_cart, 
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            Positioned(
              bottom: 14.0,
              left: 10.0,
              right: 20.0,
              child: Transform.translate(
                offset: descriptionOffset,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: descriptionStyle,
                    ),
                   
                    ElevatedButton(
                      onPressed: onTap,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent, 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.0), 
                      ),
                      child: Text(
                        buttonLabel,
                        style: TextStyle(color: Colors.black), 
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

