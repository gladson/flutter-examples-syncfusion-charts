import 'package:flutter/material.dart';

import 'package:flutter_chart_syncfusion/src/home/home_module.dart';

import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_cartesian.dart';
import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_cartesian_bar.dart';
import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_cartesian_bubble.dart';
import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_circular_pie.dart';
import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_circular_pie_angle.dart';
import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_circular_doughnut.dart';
import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_circular_doughnut_angle.dart';
import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_circular_pie_size.dart';
import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_circular_radial_bar.dart';
import 'package:flutter_chart_syncfusion/src/charts/list_charts/chart_rings.dart';

class ChartsPage extends StatefulWidget {
  @override
  _ChartsPageState createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplos de Gráficos"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => HomeModule()
              )
            );
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[900],
                  child: Text(
                    "Grafico de aneis",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CircularChartRings()
                          )
                        );  
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[800],
                  child: Text(
                    "Graficos de cartesiano",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CartesianChart()
                          )
                        );  
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[700],
                  child: Text(
                    "Grafico de cartesiano barra",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CartesianChartBar()
                          )
                        );  
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[600],
                  child: Text(
                    "Grafico de cartesiano bolhas",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CartesianChartBubble()
                          )
                        );  
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[500],
                  child: Text(
                    "Grafico de circular pizza",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CircularChartPie()
                          )
                        );  
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[400],
                  child: Text(
                    "Grafico de circular pizza - Ângulo",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CircularChartPieAngle()
                          )
                        );  
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[300],
                  child: Text(
                    "Grafico de circular pizza - Tamanho",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CircularChartPieSize()
                          )
                        );  
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[200],
                  child: Text(
                    "Grafico de circular dunut",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.black38
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CircularChartPieDoughnut()
                          )
                        );  
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[100],
                  child: Text(
                    "Grafico de circular donut - Ângulo",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.black45
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CircularChartPieDoughnutAngle()
                          )
                        );  
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  padding: EdgeInsets.all(30),
                  color: Colors.red[50],
                  child: Text(
                    "Grafico de circular radial - Bar",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.black54
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => CircularChartRadialBar()
                          )
                        );  
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

