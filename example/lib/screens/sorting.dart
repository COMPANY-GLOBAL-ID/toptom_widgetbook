import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/components/sorting_widget.dart';

class SortingPage extends StatelessWidget {
  const SortingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SortingWidget(numberOfOptions: 3),
          SizedBox(height: 10,),
          SortingWidget(numberOfOptions: 5),
        ],
      ),
    );
  }
}

