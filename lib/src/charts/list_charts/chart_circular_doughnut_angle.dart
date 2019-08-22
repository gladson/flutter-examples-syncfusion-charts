import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/scripts/utils.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChartPieDoughnutAngle extends StatefulWidget {
  @override
  _CircularChartPieDoughnutAngleState createState() => _CircularChartPieDoughnutAngleState();
}

class _CircularChartPieDoughnutAngleState extends State<CircularChartPieDoughnutAngle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gráfico Circular - Doughnut"),
      ),
      body: CircularChartPieDoughnutAnglePage(),
    );
  }
}

class CircularChartPieDoughnutAnglePage extends StatefulWidget {
  CircularChartPieDoughnutAnglePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CircularChartPieDoughnutAnglePageState();
  }
}

class CircularChartPieDoughnutAnglePageState extends State<CircularChartPieDoughnutAnglePage> {
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
                ),
                palette: Colors.primaries,
                series: <CircularSeries>[
                  DoughnutSeries<TendenciasData, String>(
                    dataSource: [
                      TendenciasData('Jan', 35, color: Color.fromRGBO(9,0,136,1)),
                      TendenciasData('Fev', 20, color: Color.fromRGBO(147,0,119,1)),
                      TendenciasData('Mar', 15, color: Color.fromRGBO(228,0,124,1)),
                      TendenciasData('Abr', 10, color: Color.fromRGBO(255,189,57,1)),
                      TendenciasData('Mai', 20, color: Color.fromRGBO(147,0,119,1)),
                      TendenciasData('Jun', 25, color: Color.fromRGBO(255,189,57,1))
                    ],
                    pointColorMapper: (TendenciasData tendencias, _) => tendencias.color,
                    xValueMapper: (TendenciasData tendencias, _) => tendencias.mes,
                    yValueMapper: (TendenciasData tendencias, _) => tendencias.vendas,
                    opacity: 0.8,
                    startAngle: 270,
                    endAngle: 90,
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