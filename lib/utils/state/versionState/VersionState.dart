
import 'package:app_nation/model/DogList.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class VersionState extends Equatable{}


class VersionLoadingState extends VersionState{
  @override
  List<Object?> get props =>[];
}

class VersionLoadedState extends VersionState{
  VersionLoadedState(this.v);
  final String v;
  @override
  List<Object?> get props => [v];
}

class VersionErrorState extends VersionState{
  VersionErrorState(this.error);
  final String error;
  @override
  List<Object?> get props => [error];
}