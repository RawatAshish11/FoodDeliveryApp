import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
          title: Text("Sign Up" , style: TextStyle(color: Colors.black54),),
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
              SizedBox(height: 10),
              Text(
                "Register Account",
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height:5),
              Text(
                "Complete your details   \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height:20),
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

                          contentPadding: EdgeInsets.fromLTRB(30,10,30,10),
                          labelStyle: TextStyle(letterSpacing: 2, ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: SvgPicture.asset( "assets/icons/Mail.svg",  fit: BoxFit.scaleDown),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        obscureText: true,
                        onSaved: (newValue) => password = newValue,
                        onChanged: (value) {

                        },
                        validator: (value) {

                        },
                        decoration: InputDecoration(

                          labelText: "Phone No",
                          hintText: "Enter your Phone No",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.fromLTRB(30,10,30,10),
                          labelStyle: TextStyle(letterSpacing: 2, ),

                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

                          suffixIcon: Icon(Icons.phone),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        obscureText: true,
                        onSaved: (newValue) => password = newValue,
                        onChanged: (value) {

                        },
                        validator: (value) {

                        },
                        decoration: InputDecoration(

                          labelText: "Password",
                          hintText: " Enter your password",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.fromLTRB(30,10,30,10),
                          labelStyle: TextStyle(letterSpacing: 2, ),

                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

                          suffixIcon: SvgPicture.asset( "assets/icons/Lock.svg",fit: BoxFit.scaleDown),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        obscureText: true,
                        onSaved: (newValue) => password = newValue,
                        onChanged: (value) {

                        },
                        validator: (value) {

                        },
                        decoration: InputDecoration(

                          labelText: "Password",
                          hintText: "Re Enter your password",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.fromLTRB(30,10,30,10),
                          labelStyle: TextStyle(letterSpacing: 2, ),

                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

                          suffixIcon: SvgPicture.asset( "assets/icons/Lock.svg",fit: BoxFit.scaleDown),
                        ),
                      ),

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
                          Colors.deepOrangeAccent,
                          Colors.orange,

                        ],
                      )
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
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

              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
                Text("OR"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
              ]),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SocialMediaLogin("assets/icons/google-icon.svg",8),
                  SocialMediaLogin("assets/icons/facebook-2.svg",10),
                  SocialMediaLogin("assets/icons/twitter.svg",9),

                ],
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    'By continuing your confirm that you agree \nwith our Term and Condition',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              )
            ],
          ),
        )

    );
  }
}