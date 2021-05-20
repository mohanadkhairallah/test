import 'package:flutter/material.dart';
import 'package:test1/drop_down_menu.dart';
import 'package:test1/meal_page.dart';

class RestaurantsPage extends StatefulWidget {
  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  bool test = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/coverkfc.png'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            child: Icon(Icons.arrow_back),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              child: Icon(Icons.shopping_cart),
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextButton(
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MealPage()),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                child: CircleAvatar(
                                  child: Image(
                                    image: AssetImage('assets/kfcavatar.png'),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'وجبات سريعة',
                                    style: TextStyle(
                                        color: Colors.orange, fontSize: 20),
                                  ),
                                  Text(
                                    'مطعم كنتاكي',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ),
                                  Text('time test'),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text('صنف'),
                                  Icon(
                                    Icons.food_bank,
                                    color: Colors.orange,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text('350 م'),
                                  Icon(
                                    Icons.map,
                                    color: Colors.orange,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text('4.5'),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'الاكثر طلبا',
                style: TextStyle(fontSize: 30),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/meal1.png'),
                            fit: BoxFit.contain),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'اسم الوجبة هنا',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'ر.ق',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 30),
                              ),
                              Text(
                                '72',
                                style: TextStyle(
                                    color: Colors.yellow[400], fontSize: 30),
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/meal2.png'),
                            fit: BoxFit.contain),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'اسم الوجبة هنا',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'ر.ق',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 30),
                              ),
                              Text(
                                '72',
                                style: TextStyle(
                                    color: Colors.yellow[400], fontSize: 30),
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/meal3.png'),
                            fit: BoxFit.contain),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'اسم الوجبة هنا',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'ر.ق',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 30),
                              ),
                              Text(
                                '72',
                                style: TextStyle(
                                    color: Colors.yellow[400], fontSize: 30),
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/meal1.png'),
                            fit: BoxFit.contain),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'اسم الوجبة هنا',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'ر.ق',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 30),
                              ),
                              Text(
                                '72',
                                style: TextStyle(
                                    color: Colors.yellow[400], fontSize: 30),
                              ),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'اصناف المطعم',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              DropDownMenu(),
              DropDownMenu(),
              DropDownMenu(),
              DropDownMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
