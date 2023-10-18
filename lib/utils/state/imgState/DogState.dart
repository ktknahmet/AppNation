
import 'package:app_nation/model/DogList.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class DogState extends Equatable{}


class DogLoadingState extends DogState{
  @override
  List<Object?> get props =>[];
}

  class DogLoadedState extends DogState{
    DogLoadedState(this.dogBreed);
    final List<DogList> dogBreed;
    @override
    List<Object?> get props => [dogBreed];
  }

  class DogErrorState extends DogState{
    DogErrorState(this.error);
    final String error;
    @override
    List<Object?> get props => [error];
  }