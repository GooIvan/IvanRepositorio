import 'dart:io';

void main() {
  // variables utilizadas. *todas sin valor*
  int cantotal = 0;
  double prom = 0;

  // estas 3 variables las genero para >= 5000, que luego nos sera util.
  int estudiantesmas5 = 0;
  int cantidadmas5 = 0;
  double promMas5 = 0;

  // y estas 3 para <5000.
  int estudiantesmenos5 = 0;
  int cantidadmenos5 = 0;
  double promMenos5 = 0;

  // input, donde le pedimos al usuario la cantidad de veces que se repetira el ciclo
  print('Números de aprendices');
  int estudiantes = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= estudiantes; i++) {
    /* en la variable 'aporte' se guardara lo indicado por el usuario, dependiendo 
    lo ingresado sera almacenado en x/y variable. */
    print('Hola, aprendiz, ¿Cuanto deseas aportar?');
    int aporte = int.parse(stdin.readLineSync()!);
    cantotal += aporte;
    prom = (cantotal / estudiantes);

    /* la condicion donde si el valor aportado por el ususario es mayor a 5000, sera 
    las 3 variables donde se almacenarán los datos. */
    if (aporte >= 5000) {
      estudiantesmas5++;
      cantidadmas5 += aporte;
      promMas5 = cantidadmas5 / estudiantesmas5;

      /* al contrario, si el valor no sobrepasa los 5000, tiene 3 variables las cuales 
  dependiendo lo escrito, se almacenará dicho caso. */
    } else {
      estudiantesmenos5++;
      cantidadmenos5 += aporte;
      promMenos5 = cantidadmenos5 / estudiantesmenos5;
    }
  }

  print('La cantidad total recaudada fue de $cantotal \n');
  print('El promedio general es de $prom \n');
  print(
      'La cantidad de aprendices que donaron 5000 o mas, fueron $estudiantesmas5 y con estos estudiantes fue recaudado: $cantidadmas5 con un promedio de $promMas5 \n');
  print(
      'La cantidad de aprendices que donaron menos de 5000, fueron $estudiantesmenos5 y con estos estudiantes fue recaudado: $cantidadmenos5 con un promedio de $promMenos5');
}
