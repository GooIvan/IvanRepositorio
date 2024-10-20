import 'dart:io';
import 'colaborador.dart';
import 'recolecta.dart';

void main() {
  print("¡Haz creado una recolecta! Ingresa monto a recaudar:");
  double monto = double.parse(stdin.readLineSync()!);

  Recolecta recolecta = Recolecta(monto, 0);

  while (!recolecta.finalizada()) {
    print("Ingrese su nombre:");
    String nombre = stdin.readLineSync()!;

    print("ingrese su aporte:");
    double aporte = double.parse(stdin.readLineSync()!);

    print("ingresa tipo de colaborador (1 o 2):");
    int tipo = int.parse(stdin.readLineSync()!);

    Colaborador colaborador = Colaborador(nombre, tipo, aporte: aporte);

    recolecta.addColaborador(colaborador);
  }

  print("El recaudo de los generosos es ${recolecta.recaudoGenerosos()}");
  print("El promedio de los generosos es ${recolecta.promedioGenerosos()}");
  print(
      "El recaudo de los colaboradores tipo 1 ${recolecta.recaudoPorTipos(1)}");
  print(
      "El recaudo de los colaboradores tipo 2 ${recolecta.recaudoPorTipos(2)}");
}
