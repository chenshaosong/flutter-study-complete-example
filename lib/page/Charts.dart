import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartsPage extends StatefulWidget {
  @override
  State<ChartsPage> createState() {
    // TODO: implement createState
    return _chartsPagePage();
  }
}

// ignore: camel_case_types
class _chartsPagePage extends State<ChartsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('图标'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  createCharts()
                ],
              )
            ],
          ),
        ));
  }


  Widget createCharts() {
    final LineChartBarData lineChartBarData1 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 1.5),
        FlSpot(5, 1.4),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.2),
        FlSpot(13, 1.8),
      ],
      isCurved: true,
      colors: [
        const Color(0xff4af699),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    final LineChartBarData lineChartBarData2 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 2.8),
        FlSpot(7, 1.2),
        FlSpot(10, 2.8),
        FlSpot(12, 2.6),
        FlSpot(13, 3.9),
      ],
      isCurved: true,
      colors: [
        const Color(0xffaa4cfc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(show: false, colors: [
        const Color(0x00aa4cfc),
      ]),
    );
    final LineChartBarData lineChartBarData3 = LineChartBarData(
      spots: [
        FlSpot(1, 2.8),
        FlSpot(3, 1.9),
        FlSpot(6, 3),
        FlSpot(10, 1.3),
        FlSpot(13, 2.5),
      ],
      isCurved: true,
      colors: const [
        Color(0xff27b6fc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
          child: Text('chars图表',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        Container(
          width: 750,
          child: LineChart(
            LineChartData(
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
                ),
                touchCallback: (LineTouchResponse touchResponse) {},
                handleBuiltInTouches: true,
              ),
              gridData: FlGridData(
                show: false,
              ),
              titlesData: FlTitlesData(
                bottomTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 22,
                  textStyle: const TextStyle(
                    color: Color(0xff72719b),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  margin: 10,
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 2:
                        return 'SEPT';
                      case 7:
                        return 'OCT';
                      case 12:
                        return 'DEC';
                    }
                    return '';
                  },
                ),
                leftTitles: SideTitles(
                  showTitles: true,
                  textStyle: const TextStyle(
                    color: Color(0xff75729e),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 1:
                        return '1m';
                      case 2:
                        return '2m';
                      case 3:
                        return '3m';
                      case 4:
                        return '5m';
                    }
                    return '';
                  },
                  margin: 8,
                  reservedSize: 30,
                ),
              ),
              borderData: FlBorderData(
                show: true,
                border: const Border(
                  bottom: BorderSide(
                    color: Color(0xff4e4965),
                    width: 4,
                  ),
                  left: BorderSide(
                    color: Colors.transparent,
                  ),
                  right: BorderSide(
                    color: Colors.transparent,
                  ),
                  top: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              minX: 0,
              maxX: 14,
              maxY: 4,
              minY: 0,
              lineBarsData: [
                lineChartBarData1,
                lineChartBarData2,
                lineChartBarData3,
              ],
            ),
            swapAnimationDuration: const Duration(milliseconds: 250),
          ),
        )
      ],
    );
  }
}
