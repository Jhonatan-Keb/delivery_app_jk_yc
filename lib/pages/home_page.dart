import 'package:delivery_app_jk_yc/components/my_drawer.dart';
import 'package:delivery_app_jk_yc/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Home")), drawer: MyDrawer());
  }
}
