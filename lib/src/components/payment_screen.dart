import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
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
  final ValueNotifier<DateTimeRange?> selectedDateRangeNotifier = ValueNotifier(null);

  @override
  void dispose() {
    selectedDateRangeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime startOfWeek = now.subtract(const Duration(days: 6));
    DateTime endOfWeek = now;

    DateTimeRange weekRange = DateTimeRange(start: startOfWeek, end: endOfWeek);

    return Column(
      children: [
        DateRangePickerButton(
          initialStartDate: startOfWeek,
          initialEndDate: endOfWeek,
          onDateRangeSelected: (range) => selectedDateRangeNotifier.value = range, icon: '',
        ),
        ValueListenableBuilder<DateTimeRange?>(
            valueListenable: selectedDateRangeNotifier,
            builder: (context, selectedDateRange, _) => BarChartSample6(dateRange: selectedDateRange ?? weekRange)),
      ],
    );
  }
}

class BarChartSample6 extends StatelessWidget {
  final DateTimeRange dateRange;

  const BarChartSample6({super.key, required this.dateRange});

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
          borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
        ),
      ],
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
              color: AppColor.of(context).colorScheme.primary.withOpacity(0.7),
              width: MediaQuery.of(context).size.width * 0.08,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
            ),
          ],
        ),
      );
      currentDate = currentDate.add(Duration(days: 1));
    }

    return barGroups;
  }

  @override
  Widget build(BuildContext context) {
    final int daysInRange = dateRange.end.difference(dateRange.start).inDays + 1;
    final double barWidth = MediaQuery.of(context).size.width * 0.08;
    final double chartWidth = max(MediaQuery.of(context).size.width, (barWidth + 15) * daysInRange);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: AppColor.of(context).colorScheme.shadow, blurRadius: 10)],
                    color: Colors.white),
                child: ClipRRect(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Заработано за 10 февраля',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColor.of(context).colorScheme.secondary),
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
                            child: Builder(builder: (context) {
                              final width = MediaQuery.of(context).size.width * 0.08;
                              return SizedBox(
                                width: chartWidth,
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
                                                  decoration: BoxDecoration(color: backgroundColor, borderRadius: 4.br),
                                                  alignment: Alignment.center,
                                                  child: Text(int.price,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                        color: foregroundColor,
                                                      )),
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
                                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                                                );
                                              })),
                                    ),
                                    extraLinesData: ExtraLinesData(extraLinesOnTop: false, horizontalLines: [
                                      HorizontalLine(y: 0, color: AppColor.of(context).colorScheme.shadow),
                                      HorizontalLine(y: 25, color: AppColor.of(context).colorScheme.shadow),
                                      HorizontalLine(y: 50, color: AppColor.of(context).colorScheme.shadow),
                                      HorizontalLine(y: 75, color: AppColor.of(context).colorScheme.shadow),
                                      HorizontalLine(y: 100, color: AppColor.of(context).colorScheme.shadow),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
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

class CustomTile extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final String icon;
  final String trailing;
  final TextStyle? trailingStyle;

  const CustomTile({super.key, required this.title, this.onPressed, required this.icon, required this.trailing, this.trailingStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Container(
        margin: 10.vp,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(borderRadius: 12.br, color: AppColor.of(context).colorScheme.onStandard),
        child: Row(
          children: [
            SvgPicture.asset(icon, color: AppColor.of(context).colorScheme.textPrimary, width: 24, height: 24),
            12.w,
            Expanded(
                child: Text(title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColor.of(context).colorScheme.textPrimary))),
            10.w,
            Text(
              trailing,
              style: trailingStyle ?? TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColor.of(context).colorScheme.primary),
            )
          ],
        ),
      ),
    );
  }
}

class DateRangePickerButton extends StatefulWidget {
  final String icon;
  final DateTime? firstDate;
  final DateTime initialStartDate;
  final DateTime initialEndDate;
  final Locale? locale;
  final Function(DateTimeRange) onDateRangeSelected;

  const DateRangePickerButton({
    Key? key,
    required this.initialStartDate,
    required this.initialEndDate,
    required this.onDateRangeSelected,
    required this.icon,
    this.firstDate,
    this.locale,
  }) : super(key: key);

  @override
  State<DateRangePickerButton> createState() => _DateRangePickerButtonState();
}

class _DateRangePickerButtonState extends State<DateRangePickerButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(widget.icon),
      onPressed: () async {
        DateTimeRange? range = await showDateRangePicker(
          context: context,
          firstDate: widget.firstDate ?? DateTime(2024),
          lastDate: DateTime.now(),
          locale: widget.locale
        );
        if (range != null) widget.onDateRangeSelected(range);
      },
    );
  }
}
