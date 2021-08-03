

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ForgotPassword extends StatelessWidget
{
  final _formKey = GlobalKey<FormState>();

  String? email;

  String? password;

  bool remember = false;

  Widget SocialMediaLogin(String icon , double pad )
  {
    return   GestureDetector(
      onTap: ()
      {

      },
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: 15),
        padding: EdgeInsets.all(pad),
        height:40,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:  Colors.blue,
        appBar: AppBar(
          title: Text("Forgot Password" , style: TextStyle(color: Colors.black54),),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () => Navigator.of(context).pop(),
          ),

        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 19),
              Text(
                "Forgot Password",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height:10),
              Text(
                "Please enter your email or Phone No and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height:30),
              Form(
                key: _formKey,

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(

                        keyboardType: TextInputType.emailAddress,
                        onSaved: (newValue) => email = newValue,
                        onChanged: (value) {
                        },
                        validator: (value) {

                        },
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email",

                          contentPadding: EdgeInsets.fromLTRB(30,18,30,18),
                          labelStyle: TextStyle(letterSpacing: 2, ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: SvgPicture.asset( "assets/icons/Mail.svg",  fit: BoxFit.scaleDown),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Or"),
                      SizedBox(height: 20),

                      TextFormField(

                        keyboardType: TextInputType.emailAddress,
                        onSaved: (newValue) => email = newValue,
                        onChanged: (value) {
                        },
                        validator: (value) {

                        },
                        decoration: InputDecoration(
                          labelText: "Phone No",
                          hintText: "Enter your Phone No",

                          contentPadding: EdgeInsets.fromLTRB(30,18,30,18),
                          labelStyle: TextStyle(letterSpacing: 2, ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: Icon(Icons.phone),
                        ),
                      ),

                      SizedBox(height: 10),
                      //FormError(errors: errors),

                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                },
                child: Container(
                  height:  MediaQuery.of(context).size.height  * 0.0520,
                  width:  MediaQuery.of(context).size.height  * 0.500,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.lightBlue,
                          Colors.lightBlueAccent,

                        ],
                      )
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontFamily: "Montserrat Regular",
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              SizedBox(height: 10),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?  ",
                    style: TextStyle(fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () {
                  //    Get.to(Signup());
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        )

    );
  }
}