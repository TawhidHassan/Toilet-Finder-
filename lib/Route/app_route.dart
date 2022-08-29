

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toiletfinder/Presentation/Page/Home/home.dart';

import '../Bloc/User/user_cubit.dart';
import '../Constants/Strings/app_strings.dart';
import '../Presentation/Page/AuthenTication/login_page.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final ScreenArguments? arguments = settings.arguments as ScreenArguments;
    final Map? args = settings.arguments as Map?;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => LogInPage());
      case HOME_PAGE:
        return MaterialPageRoute(builder: (_) => Home());
    // case "TEST_NOTIFICATION":
    //   return MaterialPageRoute(builder: (_) => MyHomePage());

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: Home(),
            ));
    }
  }
}
