// ignore_for_file: depend_on_referenced_packages

import 'package:app_nation/utils/Extention.dart';
import 'package:app_nation/utils/event/versionEvent/VersionEvent.dart';
import 'package:app_nation/utils/state/versionState/VersionState.dart';
import 'package:bloc/bloc.dart';

class VersionBloc extends Bloc<VersionListEvent,VersionState> {


  VersionBloc() : super(VersionLoadingState()){
    on<VersionLoadEvent>((event,emit) async{
      emit(VersionLoadingState());
      String version = await checkVersion();
      print("versionlar :$version");
      emit(VersionLoadedState(version));
    });

  }
}