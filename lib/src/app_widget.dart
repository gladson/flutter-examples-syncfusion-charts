import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/charts/charts_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Syncfusion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChartsModule(),
    );
  }
}
