class Colaborador {
  String? _nombreCompleto;
  int? _tipoColaborador;
  double _aporte = 0;

  Colaborador(String n, int t, {double aporte = 0}) {
    this._nombreCompleto = n;
    this._tipoColaborador = t;
    this._aporte = aporte;
  }

  String getNombreCompleto() {
    return this._nombreCompleto!;
  }

  int getTipoColaborador() {
    return this._tipoColaborador!;
  }

  double getAporte() {
    return this._aporte;
  }

  @override
  String toString() {
    return '{"nombre": $_nombreCompleto, "tipo": $_tipoColaborador, "aporte": $_aporte}';
  }
}
