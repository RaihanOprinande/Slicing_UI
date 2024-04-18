import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slice_ui/Screen_Page/Login_Page.dart';

import 'Welcome_Page.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2)
                ),
                alignment: Alignment.topLeft,
                child: Center(
                  child: IconButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => WelcomPage()));
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Image.asset('Gambar/logo_udaskin.png'),
                    SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          hintText: 'Full Name'
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          hintText: 'Email'
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          hintText: 'Password'
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          hintText: 'Confirm Password'
                      ),
                    ),
                    SizedBox(height: 10,),
    RichText(
    text: TextSpan(
    text: "I agree with the Term and Condition and the Privace Policy.",
    style: TextStyle(
    color: Colors.grey
    ),
    ),
    ),
                    SizedBox(height: 40,),
                    MaterialButton(onPressed: (){},
                      padding: EdgeInsets.symmetric(horizontal: 175, vertical: 15),
                      color: Color(0xff333333),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: Text('Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text('------------------------------- or -------------------------------',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    MaterialButton(onPressed: (){},
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('Gambar/logo_google.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(width: 20,),
                          Text('Sign Up with Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),),
                        ],
                      ),
                    ),
                    SizedBox(height: 60,),
                    RichText(
                      text: TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                              color: Colors.grey
                          ),
                          children: [
                            TextSpan(
                                text: 'Log in',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => LoginPage()));
                                  },
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                )
                            )
                          ]
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
