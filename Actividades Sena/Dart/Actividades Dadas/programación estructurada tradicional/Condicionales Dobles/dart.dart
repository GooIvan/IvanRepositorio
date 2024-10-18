import 'dart:io';

void main() {
  print('Ingrese un numero entero');
  int num = int.parse(stdin.readLineSync()!);
  if (num < 0) {
    print('Tu numero es "negativo"');
  } else {
    if (num > 0) {
      print('Tu numero es "positivo"');
    } else {
      print('Tu numero es "0"');
    }
  }
}