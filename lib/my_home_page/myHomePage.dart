// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application/my_home_page/signup_page.dart';


class MyHomePage extends StatelessWidget {
  
  // ignore: unused_field
  final GlobalKey<FormState> _formkey = GlobalKey<FormState> ();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formkey,
            child: Column(children: [
              SizedBox(height: 40,),
              Center(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(height:20),
              TextFormField(
                keyboardType: TextInputType.name,
                validator: (value){
                  if(value!.isEmpty){
                       return 'please enter your name';
                  }
                },
                  decoration: username(),
               ),
             SizedBox(height: 40,),
             TextFormField(
               keyboardType: TextInputType.visiblePassword,
               obscureText: true,
               validator: (value) {
                 if(value!.length <6) {
                   return 'password must be at least 6 character';
                 }
               },
               decoration: password(),
             ),
             SizedBox(height: 40,),
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
                child: Text('Login',style: TextStyle(fontSize: 20,color: Colors.white),),
                color: Colors.black
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(children: [
                Text('don\'t have an account?'),
                TextButton(child: Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 20)),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
                },)
              ],),
            )
            ]),
          ),
        ),
      ),
    );
  
}

  InputDecoration password() {
    return InputDecoration(  
        labelText: 'Password',labelStyle: TextStyle(color:Colors.white),
         hintText: 'Password ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: Colors.grey,style: BorderStyle.solid), 
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60)),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: Icon(Icons.remove_red_eye,color: Colors.white)
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
       ));
  }
}