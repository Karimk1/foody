import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/features/onboarding/widgets/onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OnboardingBody(),
    );
  }
}
