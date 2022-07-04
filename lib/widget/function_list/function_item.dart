
import 'package:flutter/material.dart';

import '../../login/login.dart';

class FunctionItem extends StatefulWidget{
  late String name;
  late String icon;

  FunctionItem(this.name, this.icon, {Key? key}) : super(key: key);

  @override
  State<FunctionItem> createState() => _FunctionItemState();

  Widget getWidget(context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return const Login();
            }));
      },
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon),
            Text(name),
          ],
        ),
      ),
    );
  }
}

class _FunctionItemState extends State<FunctionItem> {
  @override
  Widget build(BuildContext context) {
    return widget.getWidget(context);
  }
}
