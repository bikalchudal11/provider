// import 'package:day23hw/container_edit_page.dart';
// import 'package:flutter/material.dart';

// class ReusableRadio extends StatefulWidget {
//   String cName;
//   Color currentTextColor;
//    ReusableRadio(
//       {super.key, required this.cName, required this.currentTextColor});

//   @override
//   State<ReusableRadio> createState() => _ReusableRadioState();
// }

// class _ReusableRadioState extends State<ReusableRadio> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Radio(
//             groupValue: widget.currentTextColor,
//             value: textColors[0],
//             onChanged: (value) {
//               setState(() {
//                 widget.currentTextColor = value;
//               });
//             }),
//         SizedBox(
//           width: 5,
//         ),
//         Text("Red"),
//       ],
//     );
//   }
// }
