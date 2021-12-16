import 'package:flutter/material.dart';
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
      appBar: AppBar(
        //   foregroundColor: Color(0xffFAFAFA),
        backgroundColor: Color(0xff046264),
        title: const Text(
          "",
          textAlign: TextAlign.center,
        ),
        elevation: 10.0,
        shadowColor: Color(0xff046264),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              15,
            ),
          ),
        ),
        toolbarHeight: 70,
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: Container(
          color: const Color(0xff66666),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => (value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  HomeList(
                    leading: Icon(
                      Icons.filter_1,
                    ),
                    title: 'Increment-Decrement',
                    subtitle: '1-assignment',
                    route: '/inc_dec',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_2,
                    ),
                    title: 'I"m Rich',
                    subtitle: '2-assignment',
                    route: '/diamond',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_3,
                      size: 24.9,
                    ),
                    title: 'Dice',
                    subtitle: '3-assignment',
                    route: '/dice',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_4,
                    ),
                    title: 'Xylophone',
                    subtitle: '4-assignment',
                    route: '/xylophon',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_5,
                    ),
                    title: 'Quizz',
                    subtitle: '5-assignment',
                    route: '/Quizz',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_6,
                    ),
                    title: 'BMI Calculator',
                    subtitle: '6-assignment',
                    route: '/BMI_Calculator',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_7,
                    ),
                    title: 'Weather',
                    subtitle: '8-assignment',
                    route: '/Weather',
                  ),
                  HomeList(
                    leading: Icon(
                      Icons.filter_7,
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
