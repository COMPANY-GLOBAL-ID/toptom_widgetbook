
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/chart/bar_chart.dart';
import 'package:toptom_components/extends/num.dart';
import 'package:toptom_components/picker/data_range_picker_button.dart';
import 'package:toptom_theme/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Chart',
  type: BarChart,
)
Widget textFields(BuildContext context) {
  return const CourierFinancesScreen();
}

class CourierFinancesScreen extends StatefulWidget {
  const CourierFinancesScreen({super.key});

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

    return SingleChildScrollView(
      child: Column(
        children: [
          DateRangePickerButton(
            initialStartDate: startOfWeek,
            initialEndDate: endOfWeek,
            onDateRangeSelected: (range) => selectedDateRangeNotifier.value = range,
          ),
          ValueListenableBuilder<DateTimeRange?>(
              valueListenable: selectedDateRangeNotifier,
              builder: (context, selectedDateRange, _) => ChartExample(dateRange: selectedDateRange ?? weekRange)),
        ],
      ),
    );
  }
}

class ChartExample extends StatelessWidget {
  final DateTimeRange dateRange;

  const ChartExample({super.key, required this.dateRange});

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
          color: TopTomTheme.of(context).colorScheme.primary.withOpacity(0.7),
          width: MediaQuery.of(context).size.width * 0.08,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 20.p,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: TopTomTheme.of(context).colorScheme.shadow, blurRadius: 10)],
                    color: Colors.white),
                child: ClipRRect(
                  child: Padding(
                    padding: 20.p,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Заработано за 10 февраля',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: TopTomTheme.of(context).colorScheme.secondary),
                        ),
                        Text(
                          '${19500.price} ₸',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        20.h,
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ToptomBarChart(dateRange: dateRange),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: ToptomBarChart(dateRange: dateRange)
          )
        ],
      ),
    );
  }
}
