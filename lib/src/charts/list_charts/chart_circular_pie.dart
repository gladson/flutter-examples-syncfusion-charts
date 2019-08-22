import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/scripts/utils.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChartPie extends StatefulWidget {
  @override
  _CircularChartPieState createState() => _CircularChartPieState();
}

class _CircularChartPieState extends State<CircularChartPie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gráfico de pizza"),
      ),
      body: CircularChartPiePage(),
    );
  }
}

class CircularChartPiePage extends StatefulWidget {
  CircularChartPiePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CircularChartPiePageState();
  }
}

class CircularChartPiePageState extends State<CircularChartPiePage> {
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
                  isVisible: true,
                  toggleSeriesVisibility: true,
                  overflowMode: LegendItemOverflowMode.wrap,
                  position: LegendPosition.auto,
                  borderColor: Colors.grey[300],
                  borderWidth: 1,
                  title: LegendTitle(
                    text: 'Lanchonetes'
                  )
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
                    explode: true,
                    explodeIndex: 1,
                    enableTooltip: true,
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
    [
      this.color,
      this.tamanho
    ]
  );

  final String mes;
  final double vendas;
  final Color color;
  final String tamanho;
}