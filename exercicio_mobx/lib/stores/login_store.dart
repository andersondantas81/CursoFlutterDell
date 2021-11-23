import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  _LoginStore(){
    autorun((_){
      print(isFormValid);
    });
  }

  @observable
  String email = "";

  @action
  void setEmail(String email) => this.email = email;

  @observable
  String password = "";

  @observable
  bool passwordVisible  = false;

  @observable
  bool loading = false;

  @action
  void setPassword(String password) => this.password = password;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @action
  void login(){
    loading = true;

    loading = false;
  }

  @computed
  bool get isEmailValid =>
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(email);

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed
  bool get isFormValid => isEmailValid && isPasswordValid;
}