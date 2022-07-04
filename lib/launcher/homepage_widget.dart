import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  final Color color;

  const HomePageWidget({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var displayCardRadius = 12.0;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(displayCardRadius),
                  bottomRight: Radius.circular(displayCardRadius)),
              color: Colors.blue,
            ),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("|  搜索框  |"),
                    )),
                    const Icon(Icons.qr_code_scanner_sharp),
                  ],
                ),
                Row(
                  children: [
                    Text("|  每日数据  |"),
                    Icon(Icons.refresh),
                    Image.network(
                      "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                      width: 100.0,
                    ),
                  ],
                ),
                //表格格子
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 260,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0), color: Colors.white),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text("1"),
                Text("1"),
                Text("1"),
                TextButton(
                  child: Text("open new route"),
                  onPressed: () {
                    //导航到新路由
                    /*Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) {
                        return NewRoute();
                      }),
                    );*/
                    Navigator.pushNamed(context, "new_page");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _getMenus(String icon, String name, {Color color = Colors.black}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 50,
          height: 50,
          child: Image.asset(icon),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(name, style: TextStyle(fontSize: 14.0, color: color, height: 2)),
      ],
    );
  }
}
