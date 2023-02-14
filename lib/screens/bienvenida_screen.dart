import 'package:flutter/material.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double alto=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: alto*.30,),
            Text('Bienvendio @usuario'),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'LoginScreen');
            }, child: Text('Cerrar sesión'))
          ],
        ),
      ),
    );
  }
}
