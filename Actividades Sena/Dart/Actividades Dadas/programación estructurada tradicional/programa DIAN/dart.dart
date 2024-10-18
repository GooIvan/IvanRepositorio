import 'dart:io';

void main() {
  print("Colocar tu renta anual");
  int valor = int.parse(stdin.readLineSync()!);
  if (valor <= 10) {
    double porcentaje = (valor * 20) / 100;
    double resul = valor - porcentaje;
    print("el valor inicial es $valor y tu valor a pagar es $resul");
  } else {
    if (valor <= 100) {
      double porcentaje = (valor * 10) / 100;
      double resul = valor - porcentaje;
      print("el valor inicial es $valor y tu valor a pagar es $resul");
    } else {
      if (valor <= 1000) {
        double porcentaje = (valor * 5) / 100;
        double resul = valor - porcentaje;
        print("el valor inicial es $valor y tu valor a pagar es $resul");
      } else {
        double porcentaje = (valor * 1) / 100;
        double resul = valor - porcentaje;
        print("el valor inicial es $valor y tu valor a pagar es $resul");
      }
    }
  }
}