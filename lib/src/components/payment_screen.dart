import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_theme/toptom_theme.dart';
import 'package:toptom_widgetbook/extends/num.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;




@widgetbook.UseCase(
  name: 'Chart',
  type: SnackBar,
)
Widget textFields(BuildContext context) {
  return CourierFinancesScreen();
}

class CourierFinancesScreen extends StatefulWidget {
  @override
  State<CourierFinancesScreen> createState() => _CourierFinancesScreenState();
}

class _CourierFinancesScreenState extends State<CourierFinancesScreen> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BarChartSample6(),
    );
  }

  @override
  void initState() {
    super.initState();
  }


}


class BarChartSample6 extends StatelessWidget {
  const BarChartSample6({super.key});

  final pilateColor = Colors.grey;
  final cyclingColor = Colors.red;
  final quickWorkoutColor = Colors.yellow;
  final betweenSpace = 0.2;

  BarChartGroupData generateGroupData(
      BuildContext context,
      int x,
      double pilates,
      ) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: pilates > 0 ? pilates : 5,
          color: AppColor.of(context).colorScheme.primary.withOpacity(0.7),
          width: MediaQuery.of(context).size.width * 0.08,
          borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.of(context).colorScheme.shadow,
                    blurRadius: 10
                  )
                ],
                color: Colors.white
              ),
              child: ClipRRect(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Заработано за 10 февраля',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColor.of(context).colorScheme.secondary
                        ),
                      ),
                      Text(
                        '${19500.price} ₸',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const SizedBox(height: 14),
                
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          clipBehavior: Clip.none,
                          child: Builder(
                            builder: (context) {
                              final width = MediaQuery.of(context).size.width * 0.08;
                              return SizedBox(
                                width: (width + 15) * 31 + 50,
                                child: BarChart(
                                  BarChartData(
                                    alignment: BarChartAlignment.spaceEvenly,
                                    titlesData: FlTitlesData(
                                      show: true,
                                      leftTitles: AxisTitles(),
                                      topTitles: AxisTitles(),
                                      bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          reservedSize: width + 10,
                                          interval: 1,
                                          showTitles: true,
                                          getTitlesWidget: (double int, TitleMeta meta) {
                                            Color backgroundColor = AppColor.of(context).colorScheme.primary;
                                            Color foregroundColor = AppColor.of(context).colorScheme.onStandard;
                                            return GestureDetector(
                                              onTap: () {
                                                print(int);
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(top: 10),
                                                width: width,
                                                height: width,
                                                decoration: BoxDecoration(
                                                  color: backgroundColor,
                                                  borderRadius: 4.br
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(int.price, style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: foregroundColor,
                                                )),
                                              ),
                                            );
                                          }
                                        ),
                                      ),
                                      rightTitles: AxisTitles(
                                          sideTitles: SideTitles(
                                              reservedSize: 80,
                                              interval: 25,
                                              showTitles: true,
                                              getTitlesWidget: (double int, TitleMeta meta) {
                                                return Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Text('${(int * 100).price} ₸', style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600
                                                  )),
                                                );
                                              }
                                          )
                                      ),
                                    ),
                                    extraLinesData: ExtraLinesData(
                                        extraLinesOnTop: false,
                                        horizontalLines: [
                                          HorizontalLine(
                                              y: 0,
                                              color: AppColor.of(context).colorScheme.shadow
                                          ),
                                          HorizontalLine(
                                              y: 25,
                                              color: AppColor.of(context).colorScheme.shadow
                                          ),
                                          HorizontalLine(
                                              y: 50,
                                              color: AppColor.of(context).colorScheme.shadow
                                          ),
                                          HorizontalLine(
                                              y: 75,
                                              color: AppColor.of(context).colorScheme.shadow
                                          ),
                                          HorizontalLine(
                                              y: 100,
                                              color: AppColor.of(context).colorScheme.shadow
                                          ),
                                        ]
                                    ),
                                    barTouchData: BarTouchData(enabled: false),
                                    borderData: FlBorderData(show: false),
                                    gridData: const FlGridData(show: false),
                                    barGroups: [
                                      generateGroupData(context, 0, 23),
                                      generateGroupData(context, 0, 73),
                                      generateGroupData(context, 0, 41),
                                      generateGroupData(context, 0, 94),
                                      generateGroupData(context, 0, 36),
                                      generateGroupData(context, 0, 23),
                                      generateGroupData(context, 0, 12),
                                      generateGroupData(context, 0, 43),
                                      generateGroupData(context, 0, 62),
                                      generateGroupData(context, 0, 53),
                                      generateGroupData(context, 0, 64),
                                      generateGroupData(context, 0, 54),
                                      generateGroupData(context, 0, 23),
                                      generateGroupData(context, 0, 73),
                                      generateGroupData(context, 0, 41),
                                      generateGroupData(context, 0, 94),
                                      generateGroupData(context, 0, 36),
                                      generateGroupData(context, 0, 23),
                                      generateGroupData(context, 0, 12),
                                      generateGroupData(context, 0, 43),
                                      generateGroupData(context, 0, 62),
                                      generateGroupData(context, 0, 53),
                                      generateGroupData(context, 0, 64),
                                      generateGroupData(context, 0, 54),
                                      generateGroupData(context, 0, 0),
                                      generateGroupData(context, 0, 73),
                                      generateGroupData(context, 0, 41),
                                      generateGroupData(context, 0, 94),
                                      generateGroupData(context, 0, 36),
                                      generateGroupData(context, 0, 23),
                                      generateGroupData(context, 0, 0),
                                    ],
                                    maxY: 100,
                                  ),
                                ),
                              );
                            }
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}


class HorizontalData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}