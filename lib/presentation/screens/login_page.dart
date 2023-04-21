import 'package:flutter/material.dart';
import 'package:watchlistrial/resources/constants.dart';

import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Color usernameBorderColor = AppColors.primary3;
  Color passwordBorderColor = AppColors.primary3;

  bool isPasswordVisible = false;

  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();

    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary5,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                child: Image.asset('assets/login_img.png',
                  fit: BoxFit.contain,),
              ),
              SizedBox(height: 32),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  controller: emailController,
                  focusNode: _usernameFocusNode,
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter your Username",
                    filled: true,
                    fillColor: AppColors.primary5,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: usernameBorderColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      usernameBorderColor = AppColors.primary2;
                    });
                  },
                  onFieldSubmitted: (value) {
                    setState(() {
                      usernameBorderColor = AppColors.primary3;
                    });
                    _usernameFocusNode.unfocus();
                    _passwordFocusNode.requestFocus();
                  },
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  controller: passwordController,
                  focusNode: _passwordFocusNode,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    filled: true,
                    fillColor: AppColors.primary5,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: passwordBorderColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.primary4,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      passwordBorderColor = AppColors.primary2;
                    });
                  },
                  onFieldSubmitted: (value) {
                    setState(() {
                      passwordBorderColor = AppColors.primary3;
                    });
                  },
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: singIn,
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                ),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),

    );
    Future signIn() async{
      await FirebaseAuth instance.signInWithEmailan

    }

  }
}
