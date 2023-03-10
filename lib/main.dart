import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/bloc/bloc/login_bloc_bloc.dart';
import 'package:login/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) => LoginBloc(),)
      ]  , 
      child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        'LoginScreen':(context) =>LoginScreen(),
        'BienvenidaScreen':(context) => BienvenidaScreen()
      },
      initialRoute: 'LoginScreen',
    )
    );
  }
}