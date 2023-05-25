import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unibit/style/textstyle.dart';
import 'package:unibit/view/homepage.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double? contHeight;
  double? contWidth;
  TextEditingController mobilectrl = new TextEditingController();
  TextEditingController passwordctrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    contHeight = MediaQuery.of(context).size.height;
    contWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF7F7FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: contHeight! * 0.30,
                child: const Center(
                  child: Image(
                    image: AssetImage('asset/logo.png'),
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                height: contHeight! * 0.70,
                width: contWidth,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: ThemeStyle.blacktext24,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      color: Color(0xffF7F7FA),
                      child: TextFormField(
                        controller: mobilectrl,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Mobile number",
                            hintStyle: ThemeStyle.greytext14,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  width: 5,
                                  color: Color(0xffF7F7FA),
                                  style: BorderStyle.none),
                            ),
                            prefixIcon:
                                ImageIcon(AssetImage('asset/Call.png'))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Mobile Number";
                          }
                          if (value!.length != 10) {
                            return "Please Enter valid Mobile Number";
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      color: Color(0xffF7F7FA),
                      child: TextFormField(
                        controller: mobilectrl,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Password",
                            hintStyle: ThemeStyle.greytext14,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                width: 5,
                              ),
                            ),
                            prefixIcon:
                                ImageIcon(AssetImage('asset/Lock.png'))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Password";
                          }
                          if (value!.length != 10) {
                            return "Please Enter valid Mobile Number";
                          }
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password",
                          style: ThemeStyle.greentext14,
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => HomePage()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Color(0xffFFC004),
                              Color(0xffFF742F)
                            ],
                          ),
                          border: Border.all(
                            color: Colors.green,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(55),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: ThemeStyle.whitetext16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Color(0xff0052BE), Color(0xff0B7DC4)],
                        ),
                        //color: Color(0xff0052BE),
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(55),
                      ),
                      child: Center(
                        child: Text(
                          "Login with OTP",
                          style: ThemeStyle.whitetext16,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              const TextSpan(
                                  text: "Don't have an account?  ",
                                  style: ThemeStyle.blacktext12),
                              TextSpan(
                                  text: 'Sign up now',
                                  style: ThemeStyle.orangetext12,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {}),
                            ],
                          ),
                          textScaleFactor: 1.0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
