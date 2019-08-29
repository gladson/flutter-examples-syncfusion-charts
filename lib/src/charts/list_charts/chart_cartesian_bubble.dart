import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/scripts/utils.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChartBubble extends StatefulWidget {
  @override
  _CartesianChartBubbleState createState() => _CartesianChartBubbleState();
}

class _CartesianChartBubbleState extends State<CartesianChartBubble> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gráfico de bolhas"),
      ),
      body: CartesianChartBubblePage(),
    );
  }
}

class CartesianChartBubblePage extends StatefulWidget {
  CartesianChartBubblePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CartesianChartBubblePageState();
  }
}

class CartesianChartBubblePageState extends State<CartesianChartBubblePage> {
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
              child: SfCartesianChart(
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
                plotAreaBackgroundColor: Colors.deepOrange[50],
                palette: Colors.primaries,
                primaryXAxis: CategoryAxis(),
                series: <ChartSeries>[
                  BubbleSeries<TendenciasData, String>(
                    dataSource: [
                      TendenciasData('Jan', 35, valor: 0.32),
                      TendenciasData('Fev', 20, valor: 0.21),
                      TendenciasData('Mar', 15, valor: 0.29),
                      TendenciasData('Abr', 10, valor: 0.14),
                      TendenciasData('Mai', 20, valor: 0.10),
                      TendenciasData('Jun', 25, valor: 0.16)
                    ],
                    sizeValueMapper: (TendenciasData tendencias, _) => tendencias.valor,
                    xValueMapper: (TendenciasData tendencias, _) => tendencias.mes,
                    yValueMapper: (TendenciasData tendencias, _) => tendencias.vendas,
                    minimumRadius: 1,
                    maximumRadius: 7,
                    opacity: 0.8,
                    width: 0.6,
                    borderColor: Colors.black,
                    borderWidth: 1,
                    name: 'Bubbles'
                  ),
                  ScatterSeries<TendenciasData, String>(
                    dataSource: [
                      TendenciasData('Jan', 12),
                      TendenciasData('Fev', 25),
                      TendenciasData('Mar', 9),
                      TendenciasData('Abr', 36),
                      TendenciasData('Mai', 15),
                      TendenciasData('Jun', 42)
                    ],
                    xValueMapper: (TendenciasData tendencias, _) => tendencias.mes,
                    yValueMapper: (TendenciasData tendencias, _) => tendencias.vendas,
                    markerSettings: MarkerSettings(
                      imageUrl: 'assets/images/ghost.png',
                      isVisible: true,
                      height: 10, 
                      width: 10,
                      shape: DataMarkerType.image
                      //shape: DataMarkerType.pentagon
                    ),
                    // opacity: 0.8,
                    // width: 0.6,
                    borderColor: Colors.black,
                    borderWidth: 1,
                    name: 'Scatter'
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Obs.: Gráfico Bolha => Serve para demonstrar a elaboração das tendências crescentes ou decrescentes, e avaliar o quanto os padrões são consistentes."),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Obs.: Gráfico de dispersão => Serve para investigar a relação entre um par de variáveis contínuas.")
              ),
            )
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
    {this.valor}
  );

  final String mes;
  final double vendas;
  final double valor;
}