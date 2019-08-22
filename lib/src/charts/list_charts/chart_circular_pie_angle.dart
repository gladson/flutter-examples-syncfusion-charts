import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/scripts/utils.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChartPieAngle extends StatefulWidget {
  @override
  _CircularChartPieAngleState createState() => _CircularChartPieAngleState();
}

class _CircularChartPieAngleState extends State<CircularChartPieAngle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gráfico de pizza"),
      ),
      body: CircularChartPieAnglePage(),
    );
  }
}

class CircularChartPieAnglePage extends StatefulWidget {
  CircularChartPieAnglePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CircularChartPieAnglePageState();
  }
}

class CircularChartPieAnglePageState extends State<CircularChartPieAnglePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsiveHeight(100, context),
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: SfCircularChart(
                title: ChartTitle(
                  text: 'Análise das tendências do mercado' 
                ),
                legend: Legend(
                  isResponsive: true,
                  isVisible: true
                ),
                tooltipBehavior: TooltipBehavior(
                  animationDuration: 3,
                  enable: true,
                  color: Colors.blue[900]
                ), //Para uso em todas as series
                palette: Colors.primaries,
                series: <CircularSeries>[
                  PieSeries<TendenciasData, String>(
                    dataSource: [
                      TendenciasData('Jan', 35),
                      TendenciasData('Fev', 20),
                      TendenciasData('Mar', 15),
                      TendenciasData('Abr', 10),
                      TendenciasData('Mai', 20),
                      TendenciasData('Jun', 25)
                    ],
                    pointColorMapper: (TendenciasData tendencias, _) => tendencias.color,
                    xValueMapper: (TendenciasData tendencias, _) => tendencias.mes,
                    yValueMapper: (TendenciasData tendencias, _) => tendencias.vendas,
                    opacity: 0.8,
                    startAngle: 270,
                    endAngle: 90,
                    name: 'Pie'
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

class TendenciasData {
  TendenciasData(
    this.mes,
    this.vendas,
    {
      this.color
    }
  );

  final String mes;
  final double vendas;
  final Color color;
}