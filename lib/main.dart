import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/9_flash_chat/sabaktan/chat_screen_test.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/chat_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/home_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/login_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/register_screen.dart';
import 'package:nursultan_assigmants/app/8_weather/views/city_view.dart';
import 'package:nursultan_assigmants/app/1_inc_dec/screens_1/first_screen.dart';
import 'package:nursultan_assigmants/app/2_diamond/home_page.dart';
import 'package:nursultan_assigmants/app/3_dice/dice_screen.dart';
import 'package:nursultan_assigmants/app/4_xylophon/pages/xylophone_page.dart';

import 'package:get/get.dart';
import 'package:nursultan_assigmants/app/6_quiz/modules/home/screens/beka_screen.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/modules/home/screens/nur_screen.dart';
import 'package:nursultan_assigmants/app/screens/start_screen.dart';

import 'app/6_quiz/modules/home/controllers/beka_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Get.lazyPut<BekaController>(() => BekaController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/inc_dec': (context) => FirstScreen(),
        '/diamond': (context) => const HomePage(),
        '/dice': (context) => DiceScreen(),
        '/xylophon': (context) => const XylophonePage(),
        '/Quizz': (context) => BekaScreen(),
        '/BMI_Calculator': (context) => NurScreen(),
        '/Weather': (context) => const CityView(),
        '/Flash_Chat': (context) => const HomeScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        ChatScreenTest.id: (context) => const ChatScreen(),
      },
    );
  }
}
