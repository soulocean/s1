import 'package:flutter/material.dart';

import 'function_item.dart';

class FunctionList extends StatefulWidget {
  const FunctionList({Key? key,required this.functionBlockName}) : super(key: key);

  final String functionBlockName;

  @override
  State<FunctionList> createState() => _FunctionListState();
}

class _FunctionListState extends State<FunctionList> {
  List<FunctionItem> functionList = [
    FunctionItem("ocean", 'assets/wdt_logo.png'),
    FunctionItem("ocean", 'assets/wdt_logo.png'),
    FunctionItem("ocean", 'assets/wdt_logo.png'),
    FunctionItem("ocean", 'assets/wdt_logo.png'),
  ];

  List<Widget> _getFunctionListWidget() {
    return functionList.map((item) {
      return item.getWidget(context);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child:Column(
        children: [
          Text(widget.functionBlockName),
          Wrap(
            children: _getFunctionListWidget(),
          ),
        ],
      ),
    );
  }
}
