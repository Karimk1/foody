import 'package:bloc/bloc.dart' hide Transition;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meta/meta.dart';
import 'package:untitled2/features/login/representation/view/login_view.dart';
import 'package:untitled2/features/signup_screen/representation/manager/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  static SignupCubit get(context) => BlocProvider.of(context);

  bool isPassword = true;
  bool isRePassword = true;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var reTypepasswordcontroller = TextEditingController();
  var key = GlobalKey<FormState>();
  IconData suffixIcon = Icons.visibility_off;
  IconData ResuffixIcon = Icons.visibility_off;

  void changeSuffixIcon() {
    isPassword = !isPassword; // Toggle first
    suffixIcon = isPassword ? Icons.visibility_off : Icons
        .visibility; // Then set icon based on new state
    emit(ChangeSuffixIcon());
  }

  void changeReSuffixIcon() {
    isRePassword = !isRePassword; // Toggle first
    ResuffixIcon = isRePassword ? Icons.visibility_off : Icons.visibility; // Then set icon based on new state
    emit(ChangeReSuffixIcon());
  }

  void navigateToLogin(){
    Future.delayed(const Duration(seconds: 1),() {
      Get.offAll( () => LoginView() ,transition:Transition.native , duration: Duration(seconds: 1), );
    });
    emit(NavigateToLogin());
  }
}