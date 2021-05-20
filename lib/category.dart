import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  Category(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        // fit: StackFit.passthrough,
        // clipBehavior: Clip.hardEdge,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            child: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.local_drink,
                  color: Colors.orange,
                )
              ],
            ),
          ),
          Positioned.directional(
            textDirection: TextDirection.ltr,
            end: 0,
            child: Icon(
              Icons.add_circle,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
