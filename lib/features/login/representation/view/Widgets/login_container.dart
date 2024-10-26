import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/login/representation/manager/login_cubit/login_cubit.dart';

import '../../../../../shared/componants/componants.dart';
import '../../manager/login_cubit/login_state.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          LoginCubit cubit = LoginCubit.get(context);
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
              color: Colors.white,
            ),
            child: Center(
              child: Form(
                key: key,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EMAIL",
                        style: TextStyle(),
                      ),
                      defaultFormField(
                        textinputtype: TextInputType.text,
                        texteditingcontroller: cubit.emailController,
                        obsecuretext: false,
                        hintText: "example@email.com",
                        hintTextColor: Color(0xffA0A5BA),
                        onSubmit: (value) {
                          print(value);
                        },
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "email must not be empty";
                          }
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "PASSWORD",
                        style: TextStyle(),
                      ),
                      defaultFormField(
                          onSubmit: (String value) {
                            print(value);
                          },
                          validate: (value) {
                            if (value!.isEmpty) {
                              return "password must not be empty";
                            }
                          },
                          textinputtype: TextInputType.text,
                          texteditingcontroller: cubit.passwordController,
                          suffixIcon: cubit.suffixIcon,
                          suffixFunction: () {
                            cubit.changeSuffixIcon();
                          },
                          obsecuretext: cubit.isPassword,
                          hintText: "**********",
                          hintTextColor: Color(0xffA0A5BA),
                          iconColor: Color(0xffA0A5BA)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10,top: 10),
                        child: Row(
                          children: [
                            Checkbox(
                              checkColor: Color(0xffFF7622),
                                value: cubit.isChacked,
                                onChanged: (bool? value) {
                                  cubit.isChecked(value!);
                                }),
                            Text("Remember me"),
                            Spacer(),
                            TextButton(
                                onPressed: () {}, child: Text("Forgot Password?"))
                          ],
                        ),
                      ),
                      defaultButton(
                          function: () {
                            if (cubit.key.currentState!.validate()) {
                              print(cubit.passwordController);
                            }
                          },
                          width: double.infinity,
                          height: 62,
                          color: Color(0xffFF7622),
                          textColor: Colors.white,
                          text: "LOGIN"),
                      Row(
                        children: [
                          Text("Don’t have an account?"),
                          TextButton(
                              onPressed: () {
                                cubit.navigateToSignup();
                              },
                              child: Text("SIGN UP"))
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
