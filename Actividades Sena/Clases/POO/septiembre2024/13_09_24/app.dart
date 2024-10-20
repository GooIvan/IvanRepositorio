import 'dart:io';

class Colaborador {
  String? _nombreCompleto;
  int? _tipoColaborador;
  double _aporte = 0;

  Colaborador(String nombre, int tipo, double aporte) {
    this._nombreCompleto = nombre;
    this._tipoColaborador = tipo;
    this._aporte = aporte;
  }

  String getNombreCompleto() => this._nombreCompleto!;

  int getTipoColaborador() => this._tipoColaborador!;

  double getAporte() => this._aporte;

  @override
  String toString() =>
      '{"nombre": $_nombreCompleto, "tipo": $_tipoColaborador, "aporte": $_aporte}';
}

class Recolecta {
  List<Colaborador> _colaboradores = [];
  double? _montoRecaudar;
  double _balance = 0;

  Recolecta(double monto, double balance) {
    this._montoRecaudar = monto;
    this._balance = balance;
  }

  void addColaborador(Colaborador colaborador) {
    _colaboradores.add(colaborador);
    _balance += colaborador.getAporte();
  }

  bool finalizada() => _balance >= _montoRecaudar!;

  List<Colaborador> generosos() {
    List<Colaborador> generosos = [];
    for (var i = 0; i < _colaboradores.length; i++) {
      if (_colaboradores[i].getAporte() >= 10000) {
        generosos.add(_colaboradores[i]);
      }
    }
    return generosos;
  }

  double recaudoGenerosos() {
    double recaudo = 0;
    for (var i = 0; i < generosos().length; i++) {
      recaudo = recaudo + generosos()[i].getAporte();
    }
    return recaudo;
  }

  double promedioGenerosos() => recaudoGenerosos() / generosos().length;

  double recaudoPorTipos(tipo) {
    double recaudoTipo = 0;
    for (var colaborador in _colaboradores) {
      if (colaborador.getTipoColaborador() == tipo) {
        recaudoTipo += colaborador.getAporte();
      }
    }
    return recaudoTipo;
  }
}

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

    Colaborador colaborador = Colaborador(nombre, tipo, aporte);

    recolecta.addColaborador(colaborador);
  }

  print("El recaudo de los generosos es ${recolecta.recaudoGenerosos()}");
  print("El promedio de los generosos es ${recolecta.promedioGenerosos()}");
  print(
      "El recaudo de los colaboradores tipo 1 ${recolecta.recaudoPorTipos(1)}");
  print(
      "El recaudo de los colaboradores tipo 2 ${recolecta.recaudoPorTipos(2)}");
}
