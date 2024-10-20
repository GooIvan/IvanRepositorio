class Camisa {
  String? marca;
  String? talla;
  String? tienda;
  int? precio;

  Camisa(String marca, String talla) {
    this.marca = marca;
    this.talla = talla;
  }
}

void main() {
  Camisa sueter = Camisa('Nike', 'XL');
  sueter.precio = 10;
  sueter.tienda = 'Tierra santa';
  print(
      'La marca del sueter es ${sueter.marca},es ${sueter.talla}, lo compre en ${sueter.tienda} y me costó ${sueter.precio}');
}
