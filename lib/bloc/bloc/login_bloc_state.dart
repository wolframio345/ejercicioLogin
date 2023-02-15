part of 'login_bloc_bloc.dart';

@immutable
abstract class LoginBlocState {
  bool isUserExist;
  UserModel? usuario;
  String? token;

  LoginBlocState(this.isUserExist, this.usuario, this.token);

  
 }
//estado inicial
class LoginBlocInitial extends LoginBlocState {
  LoginBlocInitial():super(false, null, null);
}

//estado logueado
class UserLoginState extends LoginBlocState{
  UserModel? usuario;
  String? token;

  UserLoginState(this.usuario, this.token) : super(true, usuario, token);
}