class Camisa {
  String? talla;
  String? marca;
  int? precio;
}

class Pantalon {
  String? talla;
  String? marca;
  int? precio;
}

class Zapato {
  String? talla;
  String? marca;
  int? precio;
}

void main() {
  Camisa sueter = Camisa();
  sueter.talla = 'XL';
  sueter.marca = 'Nike';
  sueter.precio = 10;

  Pantalon pantaloneta = Pantalon();
  pantaloneta.talla = 'XL';
  pantaloneta.marca = 'Nike';
  pantaloneta.precio = 5;

  Zapato tenis = Zapato();
  tenis.talla = 'L';
  tenis.marca = 'Adidas';
  tenis.precio = 200;
}
