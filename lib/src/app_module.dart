import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import 'package:flutter_chart_syncfusion/src/app_bloc.dart';
import 'package:flutter_chart_syncfusion/src/charts/charts_bloc.dart';

import 'package:flutter_chart_syncfusion/src/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
    Bloc((i) => AppBloc()),
    Bloc((i) => ChartsBloc())
  ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
