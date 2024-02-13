
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/extends/num.dart';
import 'package:toptom_theme/theme.dart';

class ToptomBarChart extends StatelessWidget {
  final DateTimeRange dateRange;

  const ToptomBarChart({super.key, required this.dateRange});

  @override
  Widget build(BuildContext context) {
    final int daysInRange = dateRange.end.difference(dateRange.start).inDays + 1;
    final double barWidth = MediaQuery.of(context).size.width * 0.08;
    final double chartWidth = max(MediaQuery.of(context).size.width, (barWidth + 15) * daysInRange);


    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Builder(builder: (context) {
        return SizedBox(
          width: chartWidth,
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceEvenly,
              titlesData: FlTitlesData(
                show: true,
                leftTitles: const AxisTitles(),
                topTitles: const AxisTitles(),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      reservedSize: barWidth + 10,
                      interval: 1,
                      showTitles: true,
                      getTitlesWidget: (double int, TitleMeta meta) {
                        Color backgroundColor = TopTomTheme.of(context).colorScheme.primary;
                        Color foregroundColor = TopTomTheme.of(context).colorScheme.onStandard;
                        return GestureDetector(
                          onTap: () {
                            print(int);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: barWidth,
                            height: barWidth,
                            decoration: BoxDecoration(color: backgroundColor, borderRadius: 4.br),
                            alignment: Alignment.center,
                            child: Text(int.price,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: foregroundColor,
                              )
                            ),
                          ),
                        );
                      }),
                ),
                rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                        reservedSize: 80,
                        interval: 25,
                        showTitles: true,
                        getTitlesWidget: (double int, TitleMeta meta) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('${(int * 100).price} ₸',
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                          );
                        })),
              ),
              extraLinesData: ExtraLinesData(extraLinesOnTop: false, horizontalLines: [
                HorizontalLine(y: 0, color: TopTomTheme.of(context).colorScheme.shadow),
                HorizontalLine(y: 25, color: TopTomTheme.of(context).colorScheme.shadow),
                HorizontalLine(y: 50, color: TopTomTheme.of(context).colorScheme.shadow),
                HorizontalLine(y: 75, color: TopTomTheme.of(context).colorScheme.shadow),
                HorizontalLine(y: 100, color: TopTomTheme.of(context).colorScheme.shadow),
              ]),
              barTouchData: BarTouchData(enabled: false),
              borderData: FlBorderData(show: false),
              gridData: const FlGridData(show: false),
              barGroups: getBarChartData(dateRange, context),
              maxY: 100,
            ),
          ),
        );
      }),
    );
  }


  List<BarChartGroupData> getBarChartData(DateTimeRange range, BuildContext context) {
    Random random = Random();
    List<BarChartGroupData> barGroups = [];
    DateTime currentDate = range.start;
    while (currentDate.isBefore(range.end) || currentDate.isAtSameMomentAs(range.end)) {
      double randomValue = random.nextDouble() * 100;
      barGroups.add(
        BarChartGroupData(
          x: currentDate.day,
          barRods: [
            BarChartRodData(
              fromY: 0,
              toY: randomValue,
              color: TopTomTheme.of(context).colorScheme.primary.withOpacity(0.7),
              width: MediaQuery.of(context).size.width * 0.08,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
            ),
          ],
        ),
      );
      currentDate = currentDate.add(const Duration(days: 1));
    }

    return barGroups;
  }
}