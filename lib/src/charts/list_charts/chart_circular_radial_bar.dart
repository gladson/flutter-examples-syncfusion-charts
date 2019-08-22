import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/scripts/utils.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChartRadialBar extends StatefulWidget {
  @override
  _CircularChartRadialBarState createState() => _CircularChartRadialBarState();
}

class _CircularChartRadialBarState extends State<CircularChartRadialBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gráfico circular"),
      ),
      body: CircularChartRadialBarPage(),
    );
  }
}

class CircularChartRadialBarPage extends StatefulWidget {
  CircularChartRadialBarPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CircularChartRadialBarPageState();
  }
}

class CircularChartRadialBarPageState extends State<CircularChartRadialBarPage> {
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
                  RadialBarSeries<TendenciasData, String>(
                    dataSource: [
                      TendenciasData('Jan', 85),
                      TendenciasData('Fev', 360),
                      TendenciasData('Mar', 180),
                      // TendenciasData('Abr', 60),
                      // TendenciasData('Mai', 46),
                      // TendenciasData('Jun', 19)
                    ],
                    xValueMapper: (TendenciasData tendencias, _) => tendencias.mes,
                    yValueMapper: (TendenciasData tendencias, _) => tendencias.vendas,
                    cornerStyle: CornerStyle.endCurve, // Define o tipo de linha
                    dataLabelSettings: DataLabelSettings(
                      isVisible: true
                    ),
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