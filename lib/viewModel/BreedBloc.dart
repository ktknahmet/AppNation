
import 'dart:convert';

import 'package:app_nation/model/DogBreed.dart';
import 'package:app_nation/model/DogList.dart';
import 'package:app_nation/model/DogModel.dart';
import 'package:app_nation/model/SubBreedModel.dart';
import 'package:app_nation/service/ApiService.dart';
import 'package:app_nation/utils/Extention.dart';
import 'package:app_nation/utils/event/breedEvent/BreedEvent.dart';
import 'package:app_nation/utils/state/breedState/BreedState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BreedBloc extends Bloc<BreedListEvent,BreedState>{
  final ApiService apiService;
  List<String> dogs =[];
  List<DogList> dogList=[];
  SubBreedModel? subBreed;
  DogBreed? dogBreed;


  BreedBloc(this.apiService) : super(BreedLoadingState()){
    on<BreedLoadEvent>((event,emit) async{
      emit(BreedLoadingState());

      try{
        final DogModel breed = await apiService.allDogs();

        dogs = dogName(breed);
        print("dogs :$dogs");
        for(var i in dogs){
           dogBreed = await apiService.allBreed(i);
           subBreed= await apiService.subBreed(i);
           dogList.add(resultBreed(i,dogBreed!.message!,subBreed!.message!));

        }

        List dogListMap = dogList.map((dog) => dog.toMap()).toList();
        String dogListJson = json.encode(dogListMap);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('dogList', dogListJson);
        emit(BreedLoadedState(dogList));

      }catch(e){
        emit(BreedErrorState(e.toString()));
      }

    });
  }
}