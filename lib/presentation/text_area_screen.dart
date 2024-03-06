// import 'package:flutter/material.dart';
// import 'package:toptom_widgetbook/top_kit/export.dart';
//
//
// class TextAreaScreen extends StatefulWidget {
//   const TextAreaScreen({super.key});
//
//   @override
//   State<TextAreaScreen> createState() => _TextAreaScreenState();
// }
//
// class _TextAreaScreenState extends State<TextAreaScreen> {
//   bool _switchValue = false;
//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController textEditingController1 = TextEditingController();
//     final TextEditingController textEditingController2 = TextEditingController();
//     final TextEditingController textEditingController3 = TextEditingController();
//     final TextEditingController textEditingController4 = TextEditingController();
//     final TextEditingController textEditingController5 = TextEditingController();
//     final TextEditingController textEditingController6 = TextEditingController();
//     final TextEditingController textEditingController7 = TextEditingController();
//     final TextEditingController textEditingController8 = TextEditingController();
//     final TextEditingController textEditingController9 = TextEditingController();
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView(
//         children: [
//           const Text("TextArea"),
//           const SizedBox(height: 10,),
//           Row(
//             children: [
//               const SizedBox(width: 8,),
//               Expanded(
//                 child: TextAreaWidget.maxLinesXl(
//                   controller: textEditingController1,
//                   hintText: "Text Area",
//                   enabled: true,
//                   errorText: null,
//                 ),
//               ),
//               const SizedBox(width: 8), // Add spacing between text fields
//               Expanded(
//                 child: TextAreaWidget.maxLinesL(
//                   controller: textEditingController2,
//                   hintText: "Text Area",
//                   enabled: true,
//                   errorText: null,
//                 ),
//               ),
//               const SizedBox(width: 8), // Add spacing between text fields
//               Expanded(
//                 child: TextAreaWidget.maxLinesS(
//                   controller: textEditingController3,
//                   hintText: "Text Area",
//                   enabled: true,
//                   errorText: null,
//                 ),
//               ),
//               const SizedBox(width: 8,),
//             ],
//           ),
//           const SizedBox(height: 10,),
//           Row(
//             children: [
//               const SizedBox(width: 8,),
//               Expanded(
//                 child: TextAreaWidget.maxLinesXl(
//                   controller: textEditingController4,
//                   hintText: "Text Area",
//                   enabled: true,
//                   errorText: '',
//                 ),
//               ),
//               const SizedBox(width: 8), // Add spacing between text fields
//               Expanded(
//                 child: TextAreaWidget.maxLinesL(
//                   controller: textEditingController5,
//                   hintText: "Text Area",
//                   enabled: true,
//                   errorText: '',
//                 ),
//               ),
//               const SizedBox(width: 8), // Add spacing between text fields
//               Expanded(
//                   child: TextAreaWidget.maxLinesS(
//                     controller: textEditingController6,
//                     hintText: "Text Area",
//                     enabled: true,
//                     errorText: '',
//                   )
//               ),
//               const SizedBox(width: 8,),
//             ],
//           ),
//           const SizedBox(height: 10,),
//           Row(
//             children: [
//               const SizedBox(width: 8,),
//               Expanded(
//                 child:TextAreaWidget.maxLinesXl(
//                   controller: textEditingController7,
//                   hintText: "Text Area",
//                   enabled: false,
//                   errorText: null,
//                 ),
//               ),
//               const SizedBox(width: 8), // Add spacing between text fields
//               Expanded(
//                 child: TextAreaWidget.maxLinesL(
//                   controller: textEditingController8,
//                   hintText: "Text Area",
//                   enabled: false,
//                   errorText: null,
//                 ),
//               ),
//               const SizedBox(width: 8), // Add spacing between text fields
//               Expanded(
//                 child: TextAreaWidget.maxLinesS(
//                   controller: textEditingController9,
//                   hintText: "Text Area",
//                   enabled: false,
//                   errorText: null,
//                 ),
//               ),
//               const SizedBox(width: 8,),
//             ],
//           ),
//           const SizedBox(height: 20,),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               StepperWidget(
//                 minusColor: ColorFilter.mode(ColorKit.colorMain,BlendMode.srcIn),
//               ),
//               StepperWidget(
//                 minusColor: ColorFilter.mode(ColorKit.colorMain,BlendMode.srcIn),
//               ),
//               StepperWidget(
//                 minusColor: ColorFilter.mode(ColorKit.colorMain,BlendMode.srcIn),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               SwitchWidget(
//                 switchValue: _switchValue,
//                 onChanged: (value) {
//                   setState(() {
//                     _switchValue = value;
//                   });
//                 },
//               ),
//               SizedBox(width: 20,),
//               SwitchWidget(
//                 switchValue: true,
//               )
//             ],
//           ),
//           const SizedBox(height: 20,),
//           const Row(
//             children: [
//               SwitchWidget(
//                 scale: 0.66,
//                 switchValue: true,
//               ),
//               SizedBox(width: 20,),
//               SwitchWidget(
//                 scale: 0.66,
//                 switchValue: false,
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
