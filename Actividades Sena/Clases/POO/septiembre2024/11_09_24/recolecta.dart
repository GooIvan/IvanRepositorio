import 'colaborador.dart';

class Recolecta {
  List<Colaborador> _colaboradores = [];
  double? _montoRecaudar;
  double _balance = 0;

  Recolecta(double monto, double balance) {
    this._montoRecaudar = monto;
    this._balance = balance;
  }

  void addColaborador(Colaborador c) {
    _colaboradores.add(c);
    _balance += c.getAporte();
  }

  bool finalizada() => _balance >= _montoRecaudar!;

  List<Colaborador> generosos() {
    List<Colaborador> generosos = [];
    for (var colaborador in _colaboradores) {
      if (colaborador.getAporte() >= 10000) {
        generosos.add(colaborador);
      }
    }
    return generosos;
  }

  double recaudoGenerosos() {
    double recaudo = 0;
    for (var colaborador in generosos()) {
      recaudo += colaborador.getAporte();
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
