
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class BreedListEvent extends Equatable{
  const BreedListEvent();
}


class BreedLoadEvent extends BreedListEvent{
  @override
  List<Object?> get props =>[];
}