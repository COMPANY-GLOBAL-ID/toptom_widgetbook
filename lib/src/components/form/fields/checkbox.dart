import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:toptom_components/extends/num.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

const String markdowm = '''
Column(
  children: [
    ToptomCheckboxTile(
      title: title,
      value: value,
      onChanged: (bool? val) {  },
    ),
    ToptomCheckboxTile(
      title: title,
      value: value,
      onChanged: (bool? val) {  },
      onDelete: () {}
    ),
  ],
)
''';

const String markdowm2 = '''
Row(
  children: [
    ToptomCheckbox(value: true, onChanged: (bool? value) {},),
    ToptomCheckbox(onChanged: (bool? value) {})
  ],
)
''';


@widgetbook.UseCase(
  name: 'Checkbox',
  type: Checkbox,
)
Widget textFields(BuildContext context) {
  final title = context.knobs.string(
      label: 'Title',
      initialValue: 'Title'
  );
  final value = context.knobs.boolean(
      label: 'Value',
      initialValue: false
  );
  return Padding(
    padding: 20.p,
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
          Text('Custom Checkbox Tile', style: Theme.of(context).textTheme.titleLarge),
          ToptomCheckboxTile(
            title: title,
            value: value,
            onChanged: (bool? val) {  },
          ),
          ToptomCheckboxTile(
            title: title,
            value: value,
            onChanged: (bool? val) {  },
            onDelete: () {},
          ),
          10.h,
          SizedBox(
            width: double.infinity,
            child: HighlightView(
              markdowm,
              padding: 10.p,
              theme: githubTheme,
              language: 'dart',
            ),
          ),
          10.h,
          Divider(),
          Text('Checkbox', style: Theme.of(context).textTheme.titleLarge),
          Text('Can use in all situation', style: Theme.of(context).textTheme.bodyMedium),
          10.h,
          Row(
            children: [
              ToptomCheckbox(value: true, onChanged: (bool? value) {},),
              ToptomCheckbox(onChanged: (bool? value) {},),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: HighlightView(
              markdowm2,
              padding: 10.p,
              theme: githubTheme,
              language: 'dart',
            ),
          ),
        ],
      ),
    ),
  );
}


class ToptomCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool? value) onChanged;

  const ToptomCheckbox({super.key, this.value = false, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.black,
      splashRadius: 1,
      side: const BorderSide(color: Color.fromRGBO(139, 145, 169, 1), width: 2),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
    );
  }

}

class ToptomCheckboxTile extends StatelessWidget {
  final String title;
  final bool value;
  final void Function(bool?) onChanged;
  final void Function()? onDelete;

  ToptomCheckboxTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: Colors.black,
      splashRadius: 10,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      contentPadding: EdgeInsets.zero,
      secondary: onDelete != null
          ? CupertinoButton(onPressed: onDelete, child: const Icon(Icons.delete, size: 20))
          : const Offstage(),
      controlAffinity: ListTileControlAffinity.leading,
      value: value,
      onChanged: onChanged,
      title: Text(title),
    );
  }
}

