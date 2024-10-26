import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  required double width,
  required double height,
  required Color color,
  required Color textColor,
  required Function() function,
  required String text,
}) =>
    Container(
      width: width,
      height: height,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );

Widget defaultFormField({
  bool obsecuretext = false,
  required TextInputType textinputtype,
  required TextEditingController texteditingcontroller,
  IconData? suffixIcon,
  Color? iconColor,
  String? hintText,
  Color? hintTextColor,
  required Function(String) onSubmit,
  void Function()? suffixFunction,
  required String? Function(String?) validate,
}) =>
    TextFormField(
      onFieldSubmitted: onSubmit,
      validator: validate,
      obscureText: obsecuretext,
      keyboardType: textinputtype,
      controller: texteditingcontroller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: () {
                  suffixFunction!();
                },
                icon: Icon(suffixIcon),
              )
            : null,
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
