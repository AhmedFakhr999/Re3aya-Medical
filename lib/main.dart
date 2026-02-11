import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:re3aya_app/core/util/app_theme.dart';
import 'package:re3aya_app/features/presentation/add_bank_screen/add_bank_body.dart';
import 'package:re3aya_app/features/presentation/auth/login/login_body.dart';
import 'package:re3aya_app/features/presentation/auth/register/register_body.dart';
import 'package:re3aya_app/features/presentation/home/home_body.dart';
import 'package:re3aya_app/features/presentation/medical_record_screen/medical_record_body.dart';
import 'package:re3aya_app/features/presentation/notification_screen/notifications_body.dart';
import 'package:re3aya_app/features/presentation/profile_screen/profile_body.dart';
import 'package:re3aya_app/features/presentation/wallet_screen/wallet_body.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(Re3ayaApp());
}

class Re3ayaApp extends StatelessWidget {
  const Re3ayaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الدكتور',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      locale: const Locale('ar', 'EG'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ar', 'EG'), Locale('en', 'US')],
      home: const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
        '/notifications': (context) => const NotificationsScreen(),
        '/medical-record': (context) => const MedicalRecordScreen(),
        '/add-bank': (context) => const AddBankScreen(),
        '/wallet': (context) => const WalletScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
