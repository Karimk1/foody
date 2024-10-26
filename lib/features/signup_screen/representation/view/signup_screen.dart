import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/signup_screen/representation/manager/signup_cubit/signup_cubit.dart';
import 'package:untitled2/features/signup_screen/representation/view/widgets/signup_body.dart';
import 'package:untitled2/shared/componants/componants.dart';

class Signup_screen extends StatelessWidget {
  const Signup_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignupBody();
  }
}
