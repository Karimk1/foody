import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "images/Menu.png",
              scale: 3.7,
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "DELIVER TO",
                style: TextStyle(
                    color: Color(0xffFC6E2A),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Text(
                "Any location for now",
                style: TextStyle(color: Color(0xff676767), fontSize: 14),
              )
            ],
          ),
          Spacer(),
          CircleAvatar(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xffffffff),
              ),
            ),
            backgroundColor: Color(0xff181C2E),
            radius: 22,
          )
        ],
      ),
    );
  }
}
