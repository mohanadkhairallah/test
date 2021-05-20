import 'package:flutter/material.dart';

class MealPage extends StatefulWidget {
  @override
  _MealPageState createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  bool test = false;
  int choicetest = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/meal.png'), fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.arrow_back),
                        backgroundColor: Colors.white,
                      ),
                      Row(
                        children: [
                          Text('مطعم دجاج كنتاكي'),
                          CircleAvatar(
                            child: Image(
                              image: AssetImage('assets/kfcavatar.png'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'ر.ق',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '72',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                  Text(
                    'اسم الوجبة هنا',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextButton(
                              child: Icon(Icons.arrow_downward),
                              onPressed: () {
                                setState(() {
                                  test = !test;
                                });
                              },
                            ),
                            Text('مطلوب'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('اختيارك'),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                    test
                        ? Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'ر.ق',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '0 +',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('حجم افرادي'),
                                      TextButton(
                                        child: Icon(
                                          Icons.circle,
                                          color: choicetest == 1
                                              ? Colors.orange
                                              : Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            choicetest = 1;
                                          });
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'ر.ق',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '0 +',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('حجم وسطي'),
                                      TextButton(
                                        child: Icon(
                                          Icons.circle,
                                          color: choicetest == 2
                                              ? Colors.orange
                                              : Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            choicetest = 2;
                                          });
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'ر.ق',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '0 +',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('حجم عائلي'),
                                      TextButton(
                                        child: Icon(
                                          Icons.circle,
                                          color: choicetest == 3
                                              ? Colors.orange
                                              : Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            choicetest = 3;
                                          });
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        : Container(),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  TextButton(
                                    child: Icon(Icons.arrow_downward),
                                    onPressed: () {},
                                  ),
                                  Text('أصناف'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('مكونات اضافية'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  TextButton(
                                    child: Icon(Icons.arrow_downward),
                                    onPressed: () {},
                                  ),
                                  Text('أصناف'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('ملاحظات اخرى'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
