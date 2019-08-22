import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/scripts/utils.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChartPieSize extends StatefulWidget {
  @override
  _CircularChartPieSizeState createState() => _CircularChartPieSizeState();
}

class _CircularChartPieSizeState extends State<CircularChartPieSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gráfico de pizza"),
      ),
      body: CircularChartPieSizePage(),
    );
  }
}

class CircularChartPieSizePage extends StatefulWidget {
  CircularChartPieSizePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CircularChartPieSizePageState();
  }
}

class CircularChartPieSizePageState extends State<CircularChartPieSizePage> {
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
                      TendenciasData('Jan', 35, tamanho: '70%'),
                      TendenciasData('Fev', 20, tamanho: '40%'),
                      TendenciasData('Mar', 15, tamanho: '30%'),
                      TendenciasData('Abr', 10, tamanho: '20%'),
                      TendenciasData('Mai', 20, tamanho: '40%'),
                      TendenciasData('Jun', 25, tamanho: '50%')
                    ],
                    pointRadiusMapper: (TendenciasData tendencias, _) => tendencias.tamanho,
                    xValueMapper: (TendenciasData tendencias, _) => tendencias.mes,
                    yValueMapper: (TendenciasData tendencias, _) => tendencias.vendas,
                    opacity: 0.8,
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
    {
      this.color,
      this.tamanho
    }
  );

  final String mes;
  final double vendas;
  final Color color;
  final String tamanho;
}