import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/features/home/representation/view/widgets/home_bar.dart';
import 'package:untitled2/features/home/representation/view/widgets/search.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8,bottom: 8),
        child: Column(
          children: <Widget>[
            HomeBar(),
            Search(),
          ],
        ),
      ),
    );
  }
}
