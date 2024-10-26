import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/signup_screen/representation/manager/signup_cubit/signup_cubit.dart';

import '../../../../../shared/componants/componants.dart';
import '../../manager/signup_cubit/signup_state.dart';

class SignupContainer extends StatelessWidget {
  const SignupContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SignupCubit(),
        child: BlocBuilder<SignupCubit, SignupState>(
          builder: (BuildContext context, SignupState state) {
            SignupCubit cubit = SignupCubit.get(context);
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                color: Colors.white,
              ),
              child: Center(
                child: Form(
                  key: cubit.key,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "NAME",
                          style: TextStyle(),
                        ),
                        defaultFormField(
                          textinputtype: TextInputType.text,
                          texteditingcontroller: cubit.nameController,
                          obsecuretext: false,
                          hintText: "john doe",
                          hintTextColor: Color(0xffA0A5BA),
                          onSubmit: (value) {
                            print(value);
                          },
                          validate: (value) {
                            if (value!.isEmpty) {
                              return "name must not be empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "EMAIL",
                          style: TextStyle(),
                        ),
                        defaultFormField(
                          textinputtype: TextInputType.text,
                          texteditingcontroller: cubit.emailController,
                          obsecuretext: false,
                          hintText: "example@email.com",
                          hintTextColor: const Color(0xffA0A5BA),
                          onSubmit: (value) {
                            print(value);
                          },
                          validate: (value) {
                            if (value!.isEmpty) {
                              return "email must not be empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
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
                            obsecuretext: cubit.isPassword,
                            suffixFunction: () {
                              cubit.changeSuffixIcon();
                            },
                            hintText: "**********",
                            hintTextColor: Color(0xffA0A5BA),
                            iconColor: Color(0xffA0A5BA)),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "RE-TYPE PASSWORD",
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
                            texteditingcontroller:
                                cubit.reTypepasswordcontroller,
                            suffixIcon: cubit.ResuffixIcon,
                            suffixFunction: () {
                              cubit.changeReSuffixIcon();
                            },
                            obsecuretext: cubit.isRePassword,
                            hintText: "**********",
                            hintTextColor: Color(0xffA0A5BA),
                            iconColor: Color(0xffA0A5BA)),
                        SizedBox(
                          height: 40,
                        ),
                        TextButton(
                          onPressed: () {
                            cubit.navigateToLogin();
                          },
                          child: Text("you already have an account?"),
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
                            text: "SIGN UP")
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
