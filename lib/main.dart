import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/1_inc_dec/screens_1/first_screen.dart';
import 'package:nursultan_assigmants/2_diamond/home_page.dart';
import 'package:nursultan_assigmants/3_dice/dice_screen.dart';
import 'package:nursultan_assigmants/4_xylophon/pages/xylophone_page.dart';
import 'package:nursultan_assigmants/6_quiz/modules/home/controllers/home_controller.dart';
import 'package:nursultan_assigmants/7_bmi_calculator/pages/input_page.dart';
import 'package:nursultan_assigmants/8_weather/city_ui.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/chat_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/home_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/login_screen.dart';

import 'package:nursultan_assigmants/start/start_screen.dart';
import '6_quiz/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:nursultan_assigmants/6_quiz/modules/home/screens/screen_page.dart';

import 'package:nursultan_assigmants/9_flash_chat/sabaktan/chat_screen_test.dart';
//import 'package:nursultan_assigmants/9_flash_chat/screens/flash_screen.dart';
//import 'package:nursultan_assigmants/9_flash_chat/screens/login_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Get.lazyPut<HomeController>(() => HomeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        '/inc_dec': (context) => const FirstScreen(),
        '/diamond': (context) => const HomePage(),
        '/dice': (context) => const DiceScreen(),
        '/xylophon': (context) => const XylophonePage(),
        '/Quizz': (context) => const ScreenPage(),
        '/BMI_Calculator': (context) => const InputPage(),
        '/Weather': (context) => const CityUI(),
        '/Flash_Chat': (context) => const HomeScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        ChatScreenTest.id: (context) => const ChatScreen(),
      },
    );
  }
}
