import 'dart:io';

void main() {
  int totalrecaudo = 0;
  int dinero = 0;
  int recaudo = 0;
  List<int> listaDinero = [];
  while (recaudo < 10000) {
    print('Ingrese la cantidad de dinero');
    dinero = int.parse(stdin.readLineSync()!);
    listaDinero.add(dinero);
    recaudo += dinero;
  }
  for (int i in listaDinero) {
    totalrecaudo += i;
  }
  print('La cantidad recauda fue $totalrecaudo');
  print(listaDinero);
}
