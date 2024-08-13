import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:visite_takeo/routes/routes.dart';
import 'package:visite_takeo/utils/constants/app_colors.dart';
import 'package:visite_takeo/utils/shared_preferences_service.dart';
import 'package:visite_takeo/views/screens/splash_screen/splash_screen.dart';

import 'configs/config_reader.dart';
import 'configs/environment.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await SharedPreferencesService.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
  ));
  // subscribeT();
  await ConfigReader.initialize(Environment.dev);
  runApp(const MyApp());
}

var localStore = GetStorage();
Locale currectLang = const Locale('en', 'US');

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
// AndroidNotificationChannel? channel;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          title: 'Luna',
          debugShowCheckedModeBanner: false,
          // locale: currectLang,
          // translations: Language(),
          // fallbackLocale: const Locale('en', 'US'),
          // initialBinding: GetXNetworkManagerBinding(),
          theme: ThemeData(
            fontFamily: 'Battambang-Regular',
            appBarTheme:  AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle.dark,
                color: AppColors().primary
            ),
          ),
          // initialBinding: GetXNetworkManagerBinding(),
          // navigatorKey: GlobalUse.navigatorKey,
          initialRoute: SplashScreen.routeName,
          routes: routes,

        );
      },
    );
  }
}



subscribeT() async {
  print('---------------------');
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await FirebaseMessaging.instance.subscribeToTopic('TopicToCustomerStaging');

  print('---------------------');
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A bg message just showed up :  ${message.messageId}');
}
