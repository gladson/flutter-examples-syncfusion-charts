import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/scripts/utils.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChartPieDoughnut extends StatefulWidget {
  @override
  _CircularChartPieDoughnutState createState() => _CircularChartPieDoughnutState();
}

class _CircularChartPieDoughnutState extends State<CircularChartPieDoughnut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gráfico Circular - Doughnut"),
      ),
      body: CircularChartPieDoughnutPage(),
    );
  }
}

class CircularChartPieDoughnutPage extends StatefulWidget {
  CircularChartPieDoughnutPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CircularChartPieDoughnutPageState();
  }
}

class CircularChartPieDoughnutPageState extends State<CircularChartPieDoughnutPage> {
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
                    //radius: '50%', //Define o tamanho do circulo por completo
                    //innerRadius: '80%', //Define a largura da linha do raio do circulo
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