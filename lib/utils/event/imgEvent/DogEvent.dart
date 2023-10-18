
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class DogEvent extends Equatable{

   const DogEvent();
}


class DogLoadEvent extends DogEvent{


  @override
  List<Object?> get props =>[];
}