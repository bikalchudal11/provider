import 'package:day23hw/components/constants.dart';
import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  String title;
  double defaultVal;
  TextRow({super.key, required this.title, required this.defaultVal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: headingStyle,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                // setState(() {
                //   if (borderWidth == 1) {
                //     ScaffoldMessenger.of(context).showSnackBar(
                //         SnackBar(
                //             backgroundColor: Colors.red,
                //             content: Text(
                //                 "Minimum BoxBorderWidth must be 1")));
                //     return;
                //   } else {
                //     borderWidth--;
                //   }
                // });
              },
              icon: Icon(Icons.remove),
            ),
            SizedBox(
              width: 5,
            ),
            Text(defaultVal.toString()),
            SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {
                // setState(() {
                //   if (borderWidth == 10) {
                //     ScaffoldMessenger.of(context).showSnackBar(
                //         SnackBar(
                //             backgroundColor: Colors.red,
                //             content: Text(
                //                 "Maximum BoxBorderWidth must be 10")));
                //     return;
                //   } else {
                //     borderWidth++;
                //   }
                // });
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
      ],
    );
  }
}
