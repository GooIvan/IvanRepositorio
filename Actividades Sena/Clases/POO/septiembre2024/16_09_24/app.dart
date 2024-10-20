import 'dart:convert';

class Colaborador {
  String? nombreCompleto;
  int? tipoColaborador;
  double? aporte;

  Colaborador(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.nombreCompleto = map["nombreCompleto"];
    this.tipoColaborador = map["tipoColaborador"];
    this.aporte = map["aporte"];
  }

  @override
  String toString() {
    return '{"nombreCompleto": $nombreCompleto, "tipoColaborador": $tipoColaborador, "aporte": $aporte}';
  }
}

void main() {
  String jsonString =
      '{"nombreCompleto": "ivan","tipoColaborador": 1,"aporte": 10.0}';
  Colaborador colaborador = Colaborador(jsonString);

  print(colaborador);
}
