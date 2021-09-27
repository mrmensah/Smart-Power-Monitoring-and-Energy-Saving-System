import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';

class ChartYear extends StatefulWidget {
  @override
  _ChartYearState createState() => _ChartYearState();
}

class _ChartYearState extends State<ChartYear> {
  List<Color> gradientColors = [greenBackground, whiteBackground];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(color: whiteBackground),
          child: Padding(
            padding: const EdgeInsets.only(
                right: 18.0, left: 12.0, top: 24, bottom: 12),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
          enabled: true,
          handleBuiltInTouches: true,
          touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: whiteBackground,
              tooltipRoundedRadius: 100,
              fitInsideVertically: true,
              fitInsideHorizontally: true,
              tooltipPadding: const EdgeInsets.all(15))),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: light_darker_Background,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: light_darker_Background,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: true),
        topTitles: SideTitles(
          showTitles: false,
        ),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'Jan';
              case 2:
                return 'Mar';
              case 4:
                return 'May';
              case 6:
                return 'Jun';
              case 8:
                return 'Aug';
              case 10:
                return 'Oct';
              case 12:
                return 'Dec';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xff67727d),
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '0kWh';
              case 15:
                return '15kWh';
              case 30:
                return '30kWh';
            }
            return '';
          },
          reservedSize: 32,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true, border: Border.all(color: Colors.grey[300]!, width: 1)),
      minX: 0,
      maxX: 12,
      minY: 0,
      maxY: 30,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2, 2),
            FlSpot(4, 5),
            FlSpot(6, 3.1),
            FlSpot(8, 9),
            FlSpot(9, 3),
            FlSpot(11, 15),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.5)).toList(),
          ),
        ),
      ],
    );
  }
}
