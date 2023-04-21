import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:watchlistrial/main.dart';


import 'package:watchlistrial/resources/constants.dart';


class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Color usernameBorderColor = AppColors.primary3;
  Color passwordBorderColor = AppColors.primary3;

  bool isPasswordVisible = false;

  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  Future signIn() async{
    showDialog(context: context,
        barrierDismissible: false,
        builder: (context)=> Center(child: CircularProgressIndicator(),
    ));

    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch(e){
    }

    navigatorKey.currentState!.popUntil((route)=> route.settings.name == "/");

  }

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
    return SafeArea(
        child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
    onPressed: signIn,
    child: Text(
    "Log In",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    ),
    ),
    style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF0F111D),
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
    );

  }
}
