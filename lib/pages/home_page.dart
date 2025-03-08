import 'package:delivery_app_jk_yc/components/my_current_location.dart';
import 'package:delivery_app_jk_yc/components/my_description_box.dart';
import 'package:delivery_app_jk_yc/components/my_drawer.dart';
import 'package:delivery_app_jk_yc/components/my_sliver_app_bar.dart';
import 'package:delivery_app_jk_yc/components/my_tab_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // tab controller


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                title: MyTabBar(tabController: ,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    // my current location
                    const MyCurrentLocation(),

                    // description box
                    const MyDescriptionBox()

                  ],
                ),
              ),
            ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}
