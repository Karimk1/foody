import 'package:flutter/material.dart';
import 'package:untitled2/features/signup_screen/representation/view/widgets/signup_container.dart';
import '../../../../../shared/componants/componants.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
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
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "please sign up to get start",
                      style: TextStyle(color: Colors.white30, fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SignupContainer(),
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
