import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slice_ui/Screen_Page/Register_Page.dart';
import 'package:slice_ui/Screen_Page/Welcome_Page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool varBool = true;
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
                    SizedBox(height: 140,),
                    Image.asset('Gambar/logo_udaskin.png'),
                    SizedBox(height: 60,),
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
                    SizedBox(height: 40,),
                    MaterialButton(onPressed: (){},
                    padding: EdgeInsets.symmetric(horizontal: 175, vertical: 15),
                      color: Color(0xff333333),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Text('login',
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
                          Text('Sign in with Google',
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
                        text: "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                        children: [
                          TextSpan(
                            text: 'sign up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) =>RegisterPage()));

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
