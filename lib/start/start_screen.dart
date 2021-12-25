import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/start/drawer_page.dart';
import 'package:nursultan_assigmants/start/icon_color.dart';
import 'package:nursultan_assigmants/start/start_list.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key key}) : super(key: key);
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17212B),
      appBar: AppBar(
        backgroundColor: const Color(0xff1F2936),
        title: const Text(
          "",
          textAlign: TextAlign.center,
        ),
        elevation: 10.0,
        shadowColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              15,
            ),
          ),
        ),
        toolbarHeight: 70,
      ),
      drawer: Drawer(
        child: DrawerPage(),
        // ListView(
        //   padding: EdgeInsets.zero,
        //   children: [
        //     const DrawerHeader(
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //       ),
        //       child: Text('Drawer Header'),
        //     ),
        //     ListTile(
        //       title: const Text('Item 1'),
        //       onTap: () {
        //         // Update the state of the app.
        //         // ...
        //       },
        //     ),
        //     ListTile(
        //       title: const Text('Item 2'),
        //       onTap: () {
        //         // Update the state of the app.
        //         // ...
        //       },
        //     ),
        //   ],
        // ),
      ),
      body: Container(
        color: const Color(0xff17212B),
        padding: const EdgeInsets.all(10),
        child: Container(
          color: const Color(0xff17212B),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: const [
                  HomeList(
                    leading: Icon(
                      Icons.filter_1,
                      //  color: IconColor.iconcolorflitter,
                    ),
                    title: 'Increment-Decrement',
                    subtitle: '1-assignment',
                    route: '/inc_dec',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_2,
                      //   color: IconColor.iconcolorflitter,
                    ),
                    title: 'I"m Rich',
                    subtitle: '2-assignment',
                    route: '/diamond',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_3,
                      //  color: IconColor.iconcolorflitter,
                      size: 24.9,
                    ),
                    title: 'Dice',
                    subtitle: '3-assignment',
                    route: '/dice',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_4,
                      // color: IconColor.iconcolorflitter,
                    ),
                    title: 'Xylophone',
                    subtitle: '4-assignment',
                    route: '/xylophon',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_5,
                      ////  color: IconColor.iconcolorflitter,
                    ),
                    title: 'Quizz',
                    subtitle: '5-assignment',
                    route: '/Quizz',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_6,
                      // color: IconColor.iconcolorflitter,
                    ),
                    title: 'BMI Calculator',
                    subtitle: '6-assignment',
                    route: '/BMI_Calculator',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_7,
                      //  color: IconColor.iconcolorflitter,
                    ),
                    title: 'Weather',
                    subtitle: '8-assignment',
                    route: '/Weather',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_7,
                      //  color: IconColor.iconcolorflitter,
                    ),
                    title: 'Flash Chat',
                    subtitle: '9-assignment',
                    route: '/Flash_Chat',
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
