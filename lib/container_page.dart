import 'package:day23hw/container_edit_page.dart';
import 'package:day23hw/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          "Edit Container",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContainerEditPage()));
              },
              child: Icon(
                Icons.edit,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Consumer<SettingsProvider>(
          builder: (context, value, child) {
            return Container(
              constraints: BoxConstraints(
                maxHeight: 400,
                maxWidth: 400,
                minHeight: 200,
                minWidth: 200,
              ),
              height: value.boxHeight,
              width: value.boxWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(value.boxBorderRadius),
                  color: value.boxColor,
                  border: Border.all(
                    color: Colors.black,
                    width: value.boxBorderWidth,
                  )),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    value.txtToShow,
                    style: TextStyle(
                        fontSize: value.fontSize.toDouble(),
                        fontWeight: FontWeight.bold,
                        color: value.textColor),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
