import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/bloc/bloc/login_bloc_bloc.dart';
import 'package:login/screens/screens.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final loginBloc=BlocProvider.of<LoginBloc>(context);
    return BlocBuilder<LoginBloc, LoginBlocState>(
      builder: (context, state) {
        print('el token es ${state.token}');
        return  state.token != null?
        
         
            BienvenidaScreen()
            :Scaffold(
            appBar: AppBar(
              title: Text('Login'),
            ),
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
                  child: Column(
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
                      ElevatedButton(
                          onPressed: () {

                            /* 
                            validación de campos vacios
                            */
                            if (userController.text.isNotEmpty&&passwordController.text.isNotEmpty) {
                               //validación de correo electronico
                               if (userController.text.contains('@')) {
                                print(userController.text);
                                 loginBloc.add(LoginEvent(user: userController.text, password: passwordController.text));
                               }else{
                                final snackBar = customSnackbar(
                                                      context,
                                                      'Por favor introduzca un correo electronico',
                                                      Colors.red,
                                                      Colors.white,
                                                      2800);
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackBar);
                               }
                             }else{

                              //alerta campos vacios
                              final snackBar = customSnackbar(
                                                      context,
                                                      'Por favor llene todos los campos',
                                                      Colors.red,
                                                      Colors.white,
                                                      2800);
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackBar);
                             }
                            
                          },
                          child: Text('Iniciar Sesión'))
                    ],
                  )),
            ))
            
            ;
      },
    );
  }
}
