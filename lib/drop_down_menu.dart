import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  bool test = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Text('أصناف'),
                ],
              ),
              Row(
                children: [
                  Text('وجبات دجاج'),
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage('assets/fork.png'),
                  )
                ],
              )
            ],
          ),
          test
              ? Column(
                  children: [
                    Text('test '),
                    Text('test '),
                    Text('test '),
                  ],
                )
              : Container(),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
