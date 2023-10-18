
import 'package:app_nation/model/DogGenerate.dart';
import 'package:app_nation/service/ApiService.dart';
import 'package:app_nation/utils/event/generateEvent/GenerateEvent.dart';
import 'package:app_nation/utils/state/generateState/GenerateState.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenerateBloc extends Bloc<GenerateEvent,GenerateState>{
  final ApiService apiService;



  GenerateBloc(this.apiService) : super(GenerateLoadingState()){
    on<GenerateLoadEvent>((event,emit) async{
      emit(GenerateLoadingState());
      DogGenerate subBreedModel = await ApiService(Dio()).generate(event.random);
      emit(GenerateLoadedState(subBreedModel));
    });

  }

}