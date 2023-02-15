import 'package:bloc/bloc.dart';
import 'package:login/data/datos_usuario.dart';
import 'package:meta/meta.dart';

import '../../models/models.dart';

part 'login_bloc_event.dart';
part 'login_bloc_state.dart';

class LoginBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginBloc() : super(LoginBlocInitial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
      print('variable usuario ');
      print('Usuario siendo logueado');
      //validación de usuario y contraseña  
      if (event.user==usuarioValido[0]&&event.password==usuarioValido[1]) {
        print('Usuario correcto');
        UserModel usuarioCorrecto=UserModel(user: event.user, password: event.password);
        print('emitiendo evento');
        //si el usuario es correcto genera el token 
        emit(UserLoginState(usuarioCorrecto, '23d3jedej'));

      }else{
        print('Usuario incorrecto');
      }
    }
    );

        
    on<LogOut>(((event, emit) {
      print('Cerrando sesion');
      //cerrado de sesión y limpiado del token
      emit(UserLoginState(null, null));
      
    }));
  }
}
