import 'dart:io';

void main() {
  ListaDinero listaDinero = ListaDinero();
  listaDinero.recolectaDinero();
  print(listaDinero.mostrarDineroRecolectado());
  print(listaDinero.mostrarListaDinero());
}

class ListaDinero {
  List<int> listaDinero = [];
  int totalDinero = 0;
  int dinero = 0;

  void recolectaDinero() {
    while (totalDinero < 10000) {
      print("Ingrese el monto de dinero:");
      dinero = int.parse(stdin.readLineSync()!);
      totalDinero += dinero;
      listaDinero.add(dinero);
    }
  }

  String mostrarDineroRecolectado() {
    return "Dinero recolectado: ${totalDinero} pesos";
  }

  String mostrarListaDinero() {
    return "Dinero en la lista: $listaDinero";
  }
}
