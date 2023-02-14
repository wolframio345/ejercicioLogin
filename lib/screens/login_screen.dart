import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Login'),),
        body: Center(
          child: Container(
                          height: 320,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white),
                          child:Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Iniciar sesión',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: CustomTextField(
                                      icono: Icons.perm_identity,
                                      placeHolder: 'test@example.com',
                                      textController: userController,
                                      keyboardType: TextInputType.emailAddress,
                                      isPassWord: false),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: CustomTextField(
                                      icono: Icons.lock_outline,
                                      placeHolder: 'Contraseña',
                                      textController: passwordController,
                                      keyboardType: TextInputType.emailAddress,
                                      isPassWord: true),
                                ),
                                ElevatedButton(onPressed: (){
                                  Navigator.pushNamed(context, "BienvenidaScreen");
                                }, child: Text('Iniciar Sesión'))
                            ],
                          )
                        ),
        )
  );
 }
}