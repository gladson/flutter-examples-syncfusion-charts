import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/scripts/utils.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChart extends StatefulWidget {
  @override
  _CartesianChartState createState() => _CartesianChartState();
}

class _CartesianChartState extends State<CartesianChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gráficos em geral"),
      ),
      body: CartesianChartPage(),
    );
  }
}

class CartesianChartPage extends StatefulWidget {
  CartesianChartPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CartesianChartPageState();
  }
}

class CartesianChartPageState extends State<CartesianChartPage> {
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
        height: responsiveHeight(80, context),
        child: Center(
          child: SfCartesianChart(
            title: ChartTitle(
              text: 'Análise das vendas' 
            ),
            legend: Legend(
              isResponsive: true,
              isVisible: true,
              overflowMode: LegendItemOverflowMode.wrap
            ),
            tooltipBehavior: TooltipBehavior(
              animationDuration: 3,
              enable: true,
              color: Colors.blue[900]
            ), //Para uso em todas as series
            zoomPanBehavior: ZoomPanBehavior(
              enablePinching: false,
              enableDoubleTapZooming: false,
              
              // enableSelectionZooming: true,
              // selectionRectBorderColor: Colors.blueAccent,
              // selectionRectBorderWidth: 1,
              // selectionRectColor: Colors.blueGrey
            ),
            trackballBehavior: TrackballBehavior(
              enable: true,
              tooltipSettings: InteractiveTooltip(
                enable: true,
                color: Colors.blueGrey
              )
            ),
            plotAreaBackgroundColor: Colors.deepOrange[50],
            palette: Colors.primaries,
            primaryXAxis: CategoryAxis(),
            series: <ChartSeries>[
              LineSeries<VendasData, String>(
                dataSource: [
                  VendasData('Jan', 35),
                  VendasData('Fev', 25),
                  VendasData('Mar', 36),
                  VendasData('Abr', 45),
                  VendasData('Mai', 21),
                  VendasData('Jun', 15)
                ],
                xValueMapper: (VendasData vendas, _) => vendas.mes,
                yValueMapper: (VendasData vendas, _) => vendas.vendas,
                markerSettings: MarkerSettings(
                  isVisible: true,
                  shape: DataMarkerType.circle
                ),
                dataLabelSettings: DataLabelSettings(
                  isVisible: true
                ),
                enableTooltip: false, //Para uso de ativação individualizado
                name: 'Vendas 1'
              ),
              FastLineSeries<VendasData, String>(
                dataSource: [
                  VendasData('Jan', 55),
                  VendasData('Fev', 42),
                  VendasData('Mar', 26),
                  VendasData('Abr', 12),
                  VendasData('Mai', 35),
                  VendasData('Jun', 18)
                ],
                xValueMapper: (VendasData vendas, _) => vendas.mes,
                yValueMapper: (VendasData vendas, _) => vendas.vendas,
                name: 'Vendas 2'
              ),
              AreaSeries<VendasData, String>(
                dataSource: [
                  VendasData('Jan', 15),
                  VendasData('Fev', 18),
                  VendasData('Mar', 16),
                  VendasData('Abr', 05),
                  VendasData('Mai', 15),
                  VendasData('Jun', 38)
                ],
                xValueMapper: (VendasData vendas, _) => vendas.mes,
                yValueMapper: (VendasData vendas, _) => vendas.vendas,
                opacity: 0.5,
                borderColor: Colors.black,                  //Para uso de bordas no grafico de Areas
                borderMode: AreaBorderMode.excludeBottom,   //Para uso de bordas no grafico de Areas
                borderWidth: 1,                             //Para uso de bordas no grafico de Areas
                name: 'Vendas 3'
              ),
              SplineSeries<VendasData, String>(
                dataSource: [
                  VendasData('Jan', 10),
                  VendasData('Fev', 20),
                  VendasData('Mar', 30),
                  VendasData('Abr', 10),
                  VendasData('Mai', 20),
                  VendasData('Jun', 30)
                ],
                xValueMapper: (VendasData vendas, _) => vendas.mes,
                yValueMapper: (VendasData vendas, _) => vendas.vendas,
                splineType: SplineType.clamped,
                cardinalSplineTension: 0.9,
                name: 'Vendas 4'
              ),
              ColumnSeries<VendasData, String>(
                dataSource: [
                  VendasData('Jan', 35),
                  VendasData('Fev', 20),
                  VendasData('Mar', 15),
                  VendasData('Abr', 10),
                  VendasData('Mai', 20),
                  VendasData('Jun', 25)
                ],
                xValueMapper: (VendasData vendas, _) => vendas.mes,
                yValueMapper: (VendasData vendas, _) => vendas.vendas,
                opacity: 0.8,
                borderColor: Colors.black,
                borderWidth: 1,
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
                name: 'Vendas 5'
              ),
              StepLineSeries<VendasData, String>(
                dataSource: [
                  VendasData('Jan', 57),
                  VendasData('Fev', 50),
                  VendasData('Mar', 45),
                  VendasData('Abr', 35),
                  VendasData('Mai', 47),
                  VendasData('Jun', 55)
                ],
                xValueMapper: (VendasData vendas, _) => vendas.mes,
                yValueMapper: (VendasData vendas, _) => vendas.vendas,
                opacity: 0.8,
                name: 'Vendas 6'
              ),
            ],
          ),
        ));
  }
}

class VendasData {
  VendasData(
    this.mes,
    this.vendas
  );

  final String mes;
  final double vendas;
}