
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meta/meta.dart';
import 'package:untitled2/features/signup_screen/representation/view/signup_screen.dart';

import 'login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  bool isPassword = true;
  IconData suffixIcon = Icons.visibility_off;
  bool isChacked = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var key = GlobalKey<FormState>();

  void changeSuffixIcon() {
    isPassword = !isPassword; // Toggle first
    suffixIcon = isPassword ? Icons.visibility_off : Icons
        .visibility; // Then set icon based on new state
    emit(ChangeSuffixIcon());
  }
  void isChecked(bool value){
    isChacked = value ?? false ;
    emit(IsChacked());
  }
  void navigateToSignup(){
    Future.delayed(const Duration(seconds: 1),() {
      Get.offAll( () => Signup_screen() ,transition:Transition.native , duration: Duration(seconds: 1), );
    });
    emit(NavigateToSignup());
  }
}
