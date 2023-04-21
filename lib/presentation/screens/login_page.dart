import 'package:flutter/material.dart';
import 'package:watchlistrial/presentation/widgets/login_widget.dart';
import 'package:watchlistrial/resources/constants.dart';

import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary5,
      body: LoginWidget(),
      );
  }
}
