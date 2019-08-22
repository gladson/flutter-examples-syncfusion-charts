import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/scripts/utils.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChartBar extends StatefulWidget {
  @override
  _CartesianChartBarState createState() => _CartesianChartBarState();
}

class _CartesianChartBarState extends State<CartesianChartBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gráfico de barras"),
      ),
      body: CartesianChartBarPage(),
    );
  }
}

class CartesianChartBarPage extends StatefulWidget {
  CartesianChartBarPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CartesianChartBarPageState();
  }
}

class CartesianChartBarPageState extends State<CartesianChartBarPage> {
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
    final List<Color> color = <Color>[];
    color.add(Colors.deepOrange[50]);
    color.add(Colors.deepOrange[200]);
    color.add(Colors.deepOrange);

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors = LinearGradient(colors: color, stops: stops);

    return Container(
        height: responsiveHeight(80, context),
        child: Center(
          child: SfCartesianChart(
            title: ChartTitle(
              text: 'Análise das vendas' 
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
            isTransposed: false, //vertical = true ou horizontal = false
            primaryXAxis: CategoryAxis( //Colocar titulo na vertical no eixo X
              title: AxisTitle(
                text: 'Meses'
              ),
              isVisible: true,
              opposedPosition: false
            ),
            primaryYAxis: NumericAxis( //Colocar titulo na vertical no eixo Y => Obs.: Atentar para o tipo do objeto apresentado pode ser CategoryAxis ou NumericAxis
              title: AxisTitle(
                text: 'Percentual das vendas'
              )
            ),
            // NumericAxis(
            //   rangePadding: ChartRangePadding.none
            // ),
            series: <ChartSeries>[
              BarSeries<VendasData, String>(
                dataSource: [
                  VendasData('Jan', 35),
                  VendasData('Fev', 20),
                  VendasData('Mar', 15),
                  VendasData('Abr', null),
                  VendasData('Mai', 20),
                  VendasData('Jun', 25)
                ],
                xValueMapper: (VendasData vendas, _) => vendas.mes,
                yValueMapper: (VendasData vendas, _) => vendas.vendas,
                sortingOrder: SortingOrder.descending,
                sortFieldValueMapper: (VendasData vendas, _) => vendas.vendas,
                emptyPointSettings: EmptyPointSettings( //Customizar dados que venham sem nenhum valor
                  mode: EmptyPointMode.average,
                  color: Colors.amber, 
                  borderColor: Colors.black,
                  borderWidth: 1
                ),
                gradient: gradientColors, //Para uso das cores com gradient
                opacity: 0.8,
                width: 0.6,
                spacing: 0.3,
                borderColor: Colors.black,
                borderWidth: 1,
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
                name: 'Vendas 6'
              )

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