void main() {
  Perro perrito = new Perro();
  perrito.patas = 4;
  perrito.hacerSonido();

  Gato gatito = new Gato();
  gatito.patas = 4;
  gatito.hacerSonido();
}

abstract class Animal {
  int? patas;

  void hacerSonido();
}

class Perro implements Animal {
  int? patas;
  @override
  void hacerSonido() {
    print('Guau!');
  }
}

class Gato implements Animal {
  int? patas;
  @override
  void hacerSonido() {
    print('Miau!');
  }
}
