import 'package:mobx/mobx.dart';

part 'login.store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store{
  _LoginStore(){
    autorun((_) => print(email));
  }

  @observable
  String email = '';

  @action
  setEmail(String value) => email = value;

  @observable
  String senha = '';

  @action
  setSenha(String value) => senha = value;

  @action
  login(){
    print(email);
  }
}