import 'dart:io';

void main() {
  print('Numeros de estudiantes');
  int e = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= e; i++) {
    print('Ingrese su primera nota');
    double num1 = double.parse(stdin.readLineSync()!);
    print('Ingrese su segunda nota');
    double num2 = double.parse(stdin.readLineSync()!);
    print('Ingrese su tercera nota');
    double num3 = double.parse(stdin.readLineSync()!);
    double prom = (num1 + num2 + num3) / 3;
    if (prom > 6) {
      print('Aprobaste la asignatura con $prom');
    } else {
      print('Reprobaste la asignatura con $prom');
    }
  }
}
