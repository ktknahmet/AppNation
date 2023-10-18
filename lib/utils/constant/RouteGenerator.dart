import 'package:app_nation/utils/constant/StringUtils.dart';
import 'package:app_nation/view/mainHome/mainHome.dart';
import 'package:app_nation/view/settings/settingsPage.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case '/${StringUtils.settings}':
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case '/${StringUtils.mainHome}':

        return MaterialPageRoute(builder: (_) =>  const MainHome());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold(
          body: Center(
            child: Text('Hatalı Rota'),
          ),
        )
        );
    }
  }
}