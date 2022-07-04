import 'package:flutter/material.dart';

class MineWidget extends StatelessWidget {
  final Color color;

  const MineWidget({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Text("我的")
    );
  }
}
