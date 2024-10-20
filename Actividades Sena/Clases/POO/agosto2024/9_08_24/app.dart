class Contrasena {
  int? _pin;
  String? _user;

  Contrasena(this._pin, this._user);
  void setPin(int pin) => this._pin = pin;

  String getUser() {
    return '$_user';
  }
}

void main() {
  Contrasena pin = Contrasena(1234, 'ivan27');
  pin.setPin(12345); //Para cambiar de contraseña
  print(pin.getUser()); //Para ver el usuario

  //Algo que no se deberia hacer
  print(pin._pin);
}
