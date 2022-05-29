// ignore_for_file: deprecated_member_use, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundButton extends StatelessWidget {
 RoundButton({
    Key? key,
    required this.text,
    required GlobalKey<FormState> formkey,
  }) : _formkey = formkey, super(key: key);

  final GlobalKey<FormState> _formkey;
  String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        onPressed: () {
          if(_formkey.currentState!.validate()){
             _formkey.currentState!.save();
        }},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
           
        ),
        child: Text('Login',style: TextStyle(fontSize: 20,color: Colors.white),),
        color: Colors.black
      ),
    );
  }
}