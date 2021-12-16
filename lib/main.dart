import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/1_inc_dec/screens_1/first_screen.dart';
import 'package:nursultan_assigmants/2_diamond/home_page.dart';
import 'package:nursultan_assigmants/3_dice/dice_screen.dart';
import 'package:nursultan_assigmants/4_xylophon/pages/xylophone_page.dart';
import 'package:nursultan_assigmants/7_bmi_calculator/pages/input_page.dart';
import 'package:nursultan_assigmants/8_weather/screens_3/city_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/sabaktan/chat_screen_test.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/chat_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/home_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/login_screen.dart';
import 'package:nursultan_assigmants/9_flash_chat/screens/register_screen.dart';
import 'package:nursultan_assigmants/start/start_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

          //   primarySwatch: Colors.blue,
          ),
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        '/inc_dec': (context) => const FirstScreen(),
        '/diamond': (context) => const HomePage(),
        '/dice': (context) => const DiceScreen(),
        '/xylophon': (context) => const XylophonePage(),
        // '/Quizz': (context) => XylophonePage(),
        '/BMI_Calculator': (context) => InputPage(),
        '/Weather': (context) => CityScreen(),
        '/Flash_Chat': (context) => const HomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        ChatScreenTest.id: (context) => ChatScreen(),
      },
    );
  }
}
