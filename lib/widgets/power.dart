import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';

class PowerEstimateWidget extends StatefulWidget {
  @override
  _PowerEstimateWidgetState createState() => _PowerEstimateWidgetState();
}

class _PowerEstimateWidgetState extends State<PowerEstimateWidget> {
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
                return '1st';
              case 4:
                return '5th';
              case 9:
                return '10th';
              case 14:
                return '15th';
              case 19:
                return '20th';
              case 24:
                return '25th';
              case 30:
                return '30th';
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
      maxX: 30,
      minY: 0,
      maxY: 30,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2, 2),
            FlSpot(4, 5),
            FlSpot(6, 3.1),
            FlSpot(8, 4),
            FlSpot(9, 3),
            FlSpot(11, 4),
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
