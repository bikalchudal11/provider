// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, avoid_print

import 'package:day23hw/components/TextRow.dart';
import 'package:day23hw/components/constants.dart';
import 'package:day23hw/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContainerEditPage extends StatefulWidget {
  ContainerEditPage({
    super.key,
  });

  @override
  State<ContainerEditPage> createState() => _ContainerEditPageState();
}

List<String> textColors = ['Red', 'Green', 'Blue', 'Black', 'White'];
List<String> boxColors = ['Red', 'Green', 'Blue', 'Black', 'White'];

class _ContainerEditPageState extends State<ContainerEditPage> {
  @override
  void initState() {
    SettingsProvider sProv =
        Provider.of<SettingsProvider>(context, listen: false);
    nameController.text = sProv.txtToShow;
    super.initState();
  }

  TextEditingController nameController = TextEditingController();

  String currentTextColor = textColors[3];
  String currentBoxColor = boxColors.last;

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Text to show:",
                style: headingStyle,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Font size:",
                    style: headingStyle,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.fontSize <= 18) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content: Text("Minimum fontSize must be 18")));
                            return;
                          } else {
                            sProv.decrementFontSize();
                          }
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Consumer<SettingsProvider>(
                          builder: (context, value, child) {
                        return Text(value.fontSize.toString());
                      }),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.fontSize >= 30) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content: Text("Maximum fontSize must be 30")));
                            return;
                          } else {
                            sProv.incrementFontSize();
                          }
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Text color:",
                style: headingStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[0],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateTextColor(Colors.red);
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Red"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[1],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateTextColor(Colors.green);
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Green"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[2],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateTextColor(Colors.blue);
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Blue"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[3],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateTextColor(Colors.black);
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Black"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[4],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateTextColor(Colors.white);
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("White"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Box color:",
                style: headingStyle,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[0],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateBoxColor(Colors.red);
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Red"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[1],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateBoxColor(Colors.green);
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Green"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[2],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateBoxColor(Colors.blue);
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Blue"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[3],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateBoxColor(Colors.black);
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Black"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[4],
                      onChanged: (value) {
                        SettingsProvider sProv = Provider.of<SettingsProvider>(
                            context,
                            listen: false);
                        sProv.updateBoxColor(Colors.white);
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("White"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box Border Width:",
                    style: headingStyle,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.boxBorderWidth <= 5) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content: Text("Minimum box width must be 5")));
                            return;
                          } else {
                            sProv.decrementBoxBorderWidth();
                          }
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Consumer<SettingsProvider>(
                          builder: (context, value, child) {
                        return Text(value.boxBorderWidth.toString());
                      }),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.boxBorderWidth >= 10) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content:
                                    Text("Maximum box border must be 10")));
                            return;
                          } else {
                            sProv.incrementBoxBorderWidth();
                          }
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box Border Radius:",
                    style: headingStyle,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.boxBorderRadius <= 0) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content:
                                    Text("Minimum boxBorderRadius must be 0")));
                            return;
                          } else {
                            sProv.decrementBoxBorderRadius();
                          }
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Consumer<SettingsProvider>(
                          builder: (context, value, child) {
                        return Text(value.boxBorderRadius.toString());
                      }),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.boxBorderRadius >= 20) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content: Text(
                                    "Maximum boxBorderRadius must be 20")));
                            return;
                          } else {
                            sProv.incrementBoxBorderRadius();
                          }
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box Height:",
                    style: headingStyle,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.boxHeight <= 200) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content:
                                    Text("Minimum boxHeight must be 200")));
                            return;
                          } else {
                            sProv.decrementBoxHeight();
                          }
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Consumer<SettingsProvider>(
                          builder: (context, value, child) {
                        return Text(value.boxHeight.toString());
                      }),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.boxHeight >= 300) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content:
                                    Text("Maximum boxHeight must be 300")));
                            return;
                          } else {
                            sProv.incrementBoxHeight();
                          }
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box Width:",
                    style: headingStyle,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.boxWidth <= 200) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content: Text("Minimum boxWidth must be 200")));
                            return;
                          } else {
                            sProv.decrementBoxWidth();
                          }
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Consumer<SettingsProvider>(
                          builder: (context, value, child) {
                        return Text(value.boxWidth.toString());
                      }),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          SettingsProvider sProv =
                              Provider.of<SettingsProvider>(context,
                                  listen: false);

                          if (sProv.boxWidth >= 300) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.red,
                                content: Text("Maximum boxWidth must be 300")));
                            return;
                          } else {
                            sProv.incrementBoxWidth();
                          }
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(
                        Colors.white,
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepPurple),
                      fixedSize: MaterialStatePropertyAll(Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ))),
                  onPressed: () {
                    SettingsProvider sProv =
                        Provider.of<SettingsProvider>(context, listen: false);

                    //pop automatically
                    Navigator.pop(context);

                    //update show text
                    sProv.updateTxtToShow(nameController.text);
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
