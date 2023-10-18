import 'package:app_nation/utils/DefaultAppBar.dart';
import 'package:app_nation/utils/Extention.dart';
import 'package:app_nation/utils/WidgetExtention.dart';
import 'package:app_nation/utils/constant/StringUtils.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  var currentIndex = 0;
  @override
  void dispose() {
    deactivate();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(96),
          child: DefaultAppBar(name: StringUtils.appName),
        ),
        body: tabs[currentIndex],
        bottomNavigationBar: navigationBar()
    );
  }
}
