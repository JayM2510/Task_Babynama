import 'package:flutter/material.dart';
import 'package:task_babynama/categories_section.dart';
import 'package:task_babynama/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  Text(
                    'BABYNAMA',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SearchField(),
            PlansSection(),
            CategoriesSection(),
          ],
        ),
      ),
    );
  }
}



class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10), 
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
              ),
              Expanded(
                child: TextField(
                  onChanged: (value) => print(value),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 9,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search plans here",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.filter_list,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class PlansSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, right: 20, left: 22),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'OUR PLANS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'RECOMMENDED',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              SizedBox(width: 5), 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 15, 
                    height: 3, 
                    color: Colors.white, 
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.circle, size: 5, color: Colors.white),
                  SizedBox(width: 4),
                  Icon(Icons.circle, size: 5, color: Colors.white),
                ],
              ),
            ],
          ),
          SizedBox(height: 2), 
          Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 20, 
                  height: 3, 
                  color: kPrimaryColor,
                  margin: EdgeInsets.only(left: 1), 
                ),
              ),
               SizedBox(height: 15),
        ],
      ),
    );
  }
}











