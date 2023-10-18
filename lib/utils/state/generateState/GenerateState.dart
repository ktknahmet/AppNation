
import 'package:app_nation/model/DogGenerate.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class GenerateState extends Equatable{}


class GenerateLoadingState extends GenerateState{
  @override
  List<Object?> get props =>[];
}

class GenerateLoadedState extends GenerateState{
  GenerateLoadedState(this.generateList);
  final DogGenerate generateList;
  @override
  List<Object?> get props => [generateList];
}

class GenerateErrorState extends GenerateState{
  GenerateErrorState(this.error);
  final String error;
  @override
  List<Object?> get props => [error];
}