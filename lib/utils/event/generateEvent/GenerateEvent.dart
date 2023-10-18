
// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class GenerateEvent extends Equatable{
  String random;
  GenerateEvent(this.random);
}


class GenerateLoadEvent extends GenerateEvent{
  GenerateLoadEvent(super.random);

  @override
  List<Object?> get props =>[];
}