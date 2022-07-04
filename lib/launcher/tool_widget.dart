import 'package:flutter/material.dart';
import 'package:s1/widget/function_list/function_list_widget.dart';


class ToolWidget extends StatelessWidget {

  const ToolWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.all(10),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: const [
              SizedBox(height: 20),
              FunctionList(functionBlockName: "1",),
              FunctionList(functionBlockName: "1",),
              FunctionList(functionBlockName: "1",),
            ],
          ),
        ),
      ),
    );
  }
}
