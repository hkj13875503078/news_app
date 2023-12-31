// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_app/global.dart';
import 'package:news_app/pages/application/application.dart';
import 'package:news_app/pages/sign_in/sign_in.dart';
import 'package:news_app/pages/welcome/welcome.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class IndexPage extends StatefulWidget {
  IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(375, 812 - 44 - 34),
      minTextAdapt: true,
      scaleByHeight: true,
      splitScreenMode: true,
    );

    return Scaffold(
      body: Global.isFirstOpen == true
          ? WelcomePage()
          : Global.isOfflineLogin == true
              ? ApplicationPage()
              : SignInPage(),
    );
  }
}
