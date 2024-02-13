import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/toptom_components.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Custom Buttons',
  type: Container,
)
Widget outlinedButton(BuildContext context) {
  final text = context.knobs.string(
      label: 'Text',
      initialValue: 'Text'
  );

  final size = context.knobs.double.slider(
    label: 'Size',
    initialValue: 50,
    min: 50,
    max: 100
  );

  return SingleChildScrollView(
    child: Padding(
      padding: 20.p,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Circle Buttons'),
          10.h,
          Wrap(
            children: [
              CircleButton(size: size, onPressed: () {}, margin: 5.p, child: const Icon(Icons.search)),
              CircleButton(
                  size: size,
                  onPressed: () {},
                  margin: 5.p,
                  padding: 10.p,
                  child: AutoSizeText(text)
              ),
              double.infinity.w,
              CircleButton(size: size, margin: 5.p, child: const Icon(Icons.search)),
              CircleButton(
                size: size,
                margin: 5.p,
                padding: 10.p,
                child: AutoSizeText(text),
              ),
            ],
          ),
          const Divider(),
          const Text('More Buttons'),
          10.h,
          Wrap(
            children: [
              MoreButton(title: Text(text), onPressed: () {}),
              MoreButton(title: const Icon(Icons.add, size: 17), onPressed: () {}),
              double.infinity.w,
              MoreButton(title: Text(text), isActive: true, onPressed: () {}),
              MoreButton(title: const Icon(Icons.add, size: 17), isActive: true, onPressed: () {}),
              double.infinity.w,
              MoreButton(title: Text(text)),
              const MoreButton(title: Icon(Icons.add, size: 17)),
            ],
          ),
          const Divider(),
          const Text('Rectangle Buttons'),
          10.h,
          Wrap(
            children: [
              RectangleButton(
                onPressed: () {},
                size: size,
                margin: 5.p,
                padding: 5.p,
                child: Text(text),
              ),
              RectangleButton(
                onPressed: () {},
                size: size,
                margin: 5.p,
                child: const Icon(Icons.add),
              ),
              RectangleButton(
                onPressed: () {},
                margin: 5.p,
                child: const Icon(Icons.add),
              ),
              double.infinity.w,
              RectangleButton(
                size: size,
                margin: 5.p,
                padding: 5.p,
                child: Text(text),
              ),
              RectangleButton(
                size: size,
                margin: 5.p,
                child: const Icon(Icons.add),
              ),
              RectangleButton(
                margin: 5.p,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    ),
  );
}
