import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/const/round_button.dart';

class SignupPage extends StatelessWidget {
final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool isValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Sign up',style: TextStyle(fontSize: 30),),
                ),
                SizedBox(height: 20,),
               TextFormField(
                
                 keyboardType: TextInputType.name,
                 decoration: username(),
               ),
               SizedBox(height: 20,),
               TextFormField(
                 validator: (value) {
                    if(value == null || value.isEmpty ) {
                     return 'this field is required';
                    }
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return "Please enter a valid email address";
                  }
                  return null;
                 },
                 keyboardType: TextInputType.emailAddress,
                 decoration: Email(),
               ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: fullname(),
                ),
                 SizedBox(height: 20,),
                TextFormField(
                  validator: (value) {
                    if(value!.length < 7) {
                      return 'password must be greater than 7';
                    }
                  },
                  obscureText: true,
                  decoration: password(),
                ),
                SizedBox(height: 20,),
               SizedBox(
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
                child: Text('Submit',style: TextStyle(fontSize: 20,color: Colors.white),),
                color: Colors.black
              ),
            ),
            ]),
          ),
        ),
      ), 
    );
  }

  InputDecoration password() {
    return InputDecoration(
              labelText: 'password',labelStyle: TextStyle(color:Colors.white),
       hintText: 'Password',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: BorderSide(color: Colors.grey,
        style: BorderStyle.solid),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(60)),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: Icon(Icons.password,color:Colors.white
   )
            );
  }

  InputDecoration fullname() {
    return InputDecoration(
              labelText: 'Fullname',labelStyle: TextStyle(color:Colors.white),
       hintText: 'Enter your name ',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: BorderSide(color: Colors.grey,
        style: BorderStyle.solid),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(60)),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: Icon(Icons.person_add,color:Colors.white
   )
            );
  }

  InputDecoration Email() {
    return InputDecoration(
             labelText: 'Email',labelStyle: TextStyle(color:Colors.white),
         hintText: 'Enter your Email ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: Colors.grey,
          style: BorderStyle.solid),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60)),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: Icon(Icons.email,color:Colors.white
     )
           );
  }

  InputDecoration username() {
    return InputDecoration(
             labelText: 'username',labelStyle: TextStyle(color:Colors.white),
         hintText: 'Enter your name ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: Colors.grey,
          style: BorderStyle.solid),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60)),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: Icon(Icons.person_add,color:Colors.white
     )
           );
  }
}