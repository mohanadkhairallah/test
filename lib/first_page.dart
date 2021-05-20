import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test1/category.dart';
import 'package:test1/restaurant.dart';

import 'cover_reto.dart';

class FirstPage extends StatelessWidget {
  final List<Restaurant> myRestaurantsList = [
    Restaurant(
      restaurantName: 'مطعم دجاج كنتاكي',
      coverPhoto: 'assets/cover1.png',
      openHour: '10:00 ص',
      closeHour: '12:00 م',
      rate: '4.5',
      type: 'وجبات سريعة',
    ),
    Restaurant(
      restaurantName: 'مطعم ماكدونالدز',
      coverPhoto: 'assets/cover2.png',
      openHour: '10:00 ص',
      closeHour: '12:00 م',
      rate: '4.3',
      type: 'وجبات سريعة',
    ),
    Restaurant(
      restaurantName: 'مطعم بيتزا هت',
      coverPhoto: 'assets/cover3.png',
      openHour: '10:00 ص',
      closeHour: '12:00 م',
      rate: '4.5',
      type: 'بيتزا',
    ),
    Restaurant(
      restaurantName: 'مطعم دجاج كنتاكي',
      coverPhoto: 'assets/cover1.png',
      openHour: '10:00 ص',
      closeHour: '12:00 م',
      rate: '4.5',
      type: 'وجبات سريعة',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        child: TextButton(
                          child: Icon(
                            Icons.notifications,
                            color: Colors.yellow,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 30,
                        child: TextButton(
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                      child: Image(
                        image: AssetImage('assets/logo.png'),
                      ),
                    ),
                    Text(
                      'SAFARY',
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    )
                  ],
                ),
                TextButton(
                  child: Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Row(
                    children: [
                      Text(
                        'الخريطة',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.map,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
                Text(
                  'المطاعم القريبة منك',
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.add_circle,
                  color: Colors.red,
                  size: 30,
                ),
                Category('مشروبات'),
                Category('وجبات سريعة'),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'مطعم ضمن 1 كم',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      '26',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                )),
            Expanded(
              child: ListView.builder(
                itemCount: myRestaurantsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CoverResto(myRestaurantsList[index]);
                },
                shrinkWrap: true,
                // physics: ClampingScrollPhysics(),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Icon(
                      Icons.menu_open,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
