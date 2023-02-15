import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/bloc/bloc/login_bloc_bloc.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double alto=MediaQuery.of(context).size.height;
     final loginBloc=BlocProvider.of<LoginBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: alto*.30,),
            Text('Bienvenido usuario'),
            ElevatedButton(onPressed: (){
              Navigator.popAndPushNamed(context, 'LoginScreen');
              //llamado al evento de logout
              loginBloc.add(LogOut());

            }, child: Text('Cerrar sesión'))
          ],
        ),
      ),
    );
  }
}
