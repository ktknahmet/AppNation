// ignore_for_file: depend_on_referenced_packages

import 'package:app_nation/model/TextFieldState.dart';
import 'package:app_nation/utils/Extention.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class TextFieldBloc extends Bloc<bool, TextFieldState> {
  TextFieldBloc(BuildContext context) : super(TextFieldState(minLines: 1, width: 300,topLeft: 8.0,topRight: 8.0,bottomLeft: 8.0,bottomRight: 8.0,topPadding: 0.0)) {
    on<bool>((event, emit) {
      final screenWidth = sizeWidth(context).width;
      final newWidth = event ? screenWidth * 1 : 0.7; // Ekran genişliğinin yarısı kadar bir genişlik
      final newMinLines = event ? 5 : 1;
      const topLeft = 8.0;
      const topRight = 8.0;
      final bottomLeft = event ? 8.0: 0.0;
      final bottomRight = event ? 8.0 : 0.0;
      final topPadding = event ? 27.0 : 0.0;
      emit(TextFieldState(minLines: newMinLines, width: newWidth,topLeft: topLeft,topRight: topRight,bottomLeft: bottomLeft,bottomRight: bottomRight,topPadding: topPadding));
    });
  }
}