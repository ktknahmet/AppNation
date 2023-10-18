import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class VersionListEvent extends Equatable{
  const VersionListEvent();
}


class VersionLoadEvent extends VersionListEvent{
  @override
  List<Object?> get props =>[];
}