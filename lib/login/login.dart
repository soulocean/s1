import 'package:flutter/material.dart';

import '../launcher/launcher_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/login_background.png'),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(30.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/wdt_logo.png',
                      width: 260,
                    ),
                    const SizedBox(height: 10), //保留间距10
                    const TextField(
                      autofocus: true,
                      decoration: InputDecoration(labelText: "卖家账号"),
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "用户名"),
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "密码"),
                      obscureText: true,
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Launcher();
                          }));
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ))),
                        child: const Text(
                          "登陆",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
//                交叉轴的布局方式，对于column来说就是水平方向的布局方式
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.check_circle),
                            Text("用户隐私协议"),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.check_circle),
                            Text("记住密码"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
