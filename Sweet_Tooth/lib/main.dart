import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sweet_tooth/UI/screens/auth/LoginPage.dart';
import 'package:sweet_tooth/UI/screens/auth/register.dart';
import 'package:sweet_tooth/providers/theme_provider.dart';
import 'UI/Home.dart';
import 'UI/SplashScreen.dart';
import 'UI/screens/auth/forgot_password.dart';
import 'consts/theme_data.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return ThemeProvider();
        })
      ],
      child: Consumer<ThemeProvider>(
      builder: (context,themeProvider,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
        theme: Styles.themeData(isDarkTheme:themeProvider.getIsDarkTheme, context:context),
    home: SplashScreen(),
          routes: {
            Home.routeName: (context) => Home(),
            ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
            RegisterScreen.routeName: (context) => RegisterScreen(),
            LoginScreen.routeName: (context) => LoginScreen()
          }
        );
      }
      ),
    );
  }
}
