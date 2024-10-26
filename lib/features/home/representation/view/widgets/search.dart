import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? textEditingController;
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(keyboardType: TextInputType.text,controller: textEditingController,)
    );
  }
}
