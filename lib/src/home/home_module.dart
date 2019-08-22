import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import 'package:flutter_chart_syncfusion/src/charts/charts_bloc.dart';
import 'package:flutter_chart_syncfusion/src/home/home_bloc.dart';

import 'package:flutter_chart_syncfusion/src/home/home_page.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
    Bloc((i) => HomeBloc()),
    Bloc((i) => ChartsBloc())
  ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
