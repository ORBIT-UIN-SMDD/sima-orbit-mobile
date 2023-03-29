import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/common/routes.dart';
import 'package:sima_orbit_mobile/firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:sima_orbit_mobile/provider/auth_provider.dart';
import 'package:sima_orbit_mobile/provider/bottom_navigation_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    // TODO: implement initState
    SetupFcm();
    super.initState();
  }

  void SetupFcm() async {
    // Aktifkan permission untuk menerima notifikasi
    FirebaseMessaging.instance.requestPermission();
    // Aktifkan subscribe ke topik notifikasi
    FirebaseMessaging.instance.subscribeToTopic('versi1');
    String? token = await FirebaseMessaging.instance.getToken();
    print(token);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider()
            ..fakultas()
            ..bidang(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavigationProvider(),
        ),
      ],
      child: MaterialApp.router(
        title: "SIMAOrbit Mobile",
        theme: ThemeData(
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        routeInformationParser: routes.routeInformationParser,
        routerDelegate: routes.routerDelegate,
        routeInformationProvider: routes.routeInformationProvider,
      ),
    );
  }
}
