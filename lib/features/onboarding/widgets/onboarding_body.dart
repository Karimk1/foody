import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/features/onboarding/onboarding_model/onboarding_model.dart';
import 'package:untitled2/shared/componants/componants.dart';
import 'package:untitled2/shared/componants/constant.dart';

class OnboardingBody extends StatelessWidget {
  OnboardingBody({super.key});

  List<OnboardingModel> onBoardingModel = [
    OnboardingModel(
        image: "images/Onboarding_01.png",
        title: "All your favorites",
        body:
            "Get all your loved foods in one once place, you just place the order we do the rest"),
    OnboardingModel(
        image: "images/Onboarding_02.png",
        title: "All your favorites",
        body:
            "Get all your loved foods in one once place, you just place the order we do the rest"),
    OnboardingModel(
        image: "images/Onboarding_03.png",
        title: "Order from chosen chef",
        body:
            "Get all your loved foods in one once place, you just place the order we do the rest"),
    OnboardingModel(
        image: "images/Onboarding_04.png",
        title: "Free deliver offers",
        body:
            "Get all your loved foods in one once place, you just place the order we do the rest")
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) =>
                  buildBoardingItem(onBoardingModel[index]),
              itemCount: onBoardingModel.length,
            ),
          ),
          Row(
            children: [
              Text("data"),
              Spacer(),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
                backgroundColor: colorOrange,
              ),
            ],
          ),
          defaultButton(
              width: double.infinity,
              height: 10,
              color: colorOrange,
              textColor: Colors.white,
              function: () {},
              text: "skip")
        ],
      ),
    );
  }

  Widget buildBoardingItem(OnboardingModel onBoarding) => Column(
        children: [
          Expanded(child: Image.asset("${onBoarding.image}", scale: 4)),
          Text(
            "${onBoarding.title}",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
          ),
          Text(
            "${onBoarding.body}",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      );
}
