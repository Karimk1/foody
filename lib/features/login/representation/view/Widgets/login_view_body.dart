import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/componants/componants.dart';
import 'login_container.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black26,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/BG Asset.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Center(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      Text(
                        "LOG IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Please sign in to your existing account",
                        style: TextStyle(color: Colors.white30, fontSize: 16),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      LoginContainer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
    );
  }
}
