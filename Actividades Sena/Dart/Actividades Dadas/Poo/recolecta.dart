import 'dart:convert';

class Colaborador{
  String? nombreCompleto;
  int? tipoColaborador;
  double? aporte;

  Colaborador(String jsonString){
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.nombreCompleto = map["nombreCompleto"];
    this.tipoColaborador = map["tipoColaborad"];
    this.aporte = map["aporte"];
    
  }
}
void main(){
  String jsonString = '{"nombreCompleto": "ivan","tipoColaborador": 1,"aporte": 100.0}';
  Colaborador colaborador = Colaborador(jsonString);

  print(colaborador.aporte);
}