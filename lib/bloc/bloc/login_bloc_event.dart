part of 'login_bloc_bloc.dart';

@immutable
abstract class LoginBlocEvent {}

//evento de login
class LoginEvent extends LoginBlocEvent{

  final String user;
  final String password;

  LoginEvent({required this.user, required this.password});
}
//evento log out
class LogOut extends LoginBlocEvent{
  
  
}
