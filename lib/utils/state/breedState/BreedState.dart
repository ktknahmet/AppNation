
import 'package:app_nation/model/DogList.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class BreedState extends Equatable{}


class BreedLoadingState extends BreedState{
  @override
  List<Object?> get props =>[];
}

class BreedLoadedState extends BreedState{
  BreedLoadedState(this.dogList);
  final List<DogList> dogList;
  @override
  List<Object?> get props => [dogList];
}

class BreedErrorState extends BreedState{
  BreedErrorState(this.error);
  final String error;
  @override
  List<Object?> get props => [error];
}