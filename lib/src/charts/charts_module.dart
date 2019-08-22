import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

import 'package:flutter_chart_syncfusion/src/charts/charts_page.dart';

class ChartsModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => ChartsPage();

  static Inject get to => Inject<ChartsModule>.of();
}
