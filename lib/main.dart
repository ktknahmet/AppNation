
import 'dart:convert';

import 'package:app_nation/service/ApiService.dart';
import 'package:app_nation/utils/Extention.dart';
import 'package:app_nation/utils/WidgetExtention.dart';
import 'package:app_nation/utils/constant/RouteGenerator.dart';
import 'package:app_nation/utils/event/breedEvent/BreedEvent.dart';
import 'package:app_nation/utils/event/imgEvent/DogEvent.dart';
import 'package:app_nation/utils/event/versionEvent/VersionEvent.dart';
import 'package:app_nation/utils/state/breedState/BreedState.dart';
import 'package:app_nation/viewModel/BreedBloc.dart';
import 'package:app_nation/viewModel/TextFieldBloc.dart';
import 'package:app_nation/viewModel/VersionCheckCubit.dart';
import 'package:app_nation/viewModel/DogBloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'utils/constant/StringUtils.dart';
import 'utils/event/generateEvent/GenerateEvent.dart';
import 'viewModel/GenerateBloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VersionBloc>(
          create: (BuildContext context) =>VersionBloc()..add(VersionLoadEvent()),
        ),
        BlocProvider<TextFieldBloc>(
          create: (BuildContext context) =>TextFieldBloc(context),
        ),



      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,

        home: MyHomePage()
    ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) =>BreedBloc(ApiService(Dio()))..add(BreedLoadEvent()),
      child: Scaffold(
          body:BlocBuilder<BreedBloc,BreedState>(
          builder: (context,state){
            if(state is BreedLoadedState){

              return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/${StringUtils.mainHome}');
                  },
                  child: Center(child: Image.asset("assets/splash.png",height: 64,))
              );
            }else if(state is BreedLoadingState){
              return spinKit(context);
            }
            return Container();
          },

        )
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
