
import 'dart:convert';

import 'package:app_nation/model/DogList.dart';
import 'package:app_nation/utils/Extention.dart';
import 'package:app_nation/utils/event/imgEvent/DogEvent.dart';
import 'package:app_nation/utils/state/imgState/DogState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DogBloc extends Bloc<DogEvent,DogState>{
 String query;


  DogBloc(this.query) : super(DogLoadingState()){
    on<DogLoadEvent>((event,emit) async{
      emit(DogLoadingState());
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? dogListJson = prefs.getString('dogList');
      if (dogListJson != null) {
        List<dynamic> dogListMap = json.decode(dogListJson);


        List<DogList> dogList = dogListMap
            .map((item) => DogList.fromMap(item))
            .toList();
        emit(DogLoadedState(searchResult(query,dogList)));
        print("bloc çalışıyor dogBloc ${dogList.length}");
      }
    });

  }

}