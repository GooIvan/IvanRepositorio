class Calculadora {
  double? num1;
  double? num2;
  String? operacion;

  Calculadora(num1, num2, operacion) {
    this.num1 = num1;
    this.num2 = num2;
    this.operacion = operacion;
  }

  double sumar() {
    double suma = num1! + num2!;
    return suma;
  }

  double multiplicar() {
    double multiplicar = num1! * num2!;
    return multiplicar;
  }

  double dividir() {
    double dividir = num1! / num2!;
    return dividir;
  }

  double restar() {
    double restar = num1! - num2!;
    return restar;
  }

  void calcular() {
    if (operacion == 's') {
      print('La suma de $num1 + $num2 es igual a ${sumar()}');
    } else if (operacion == 'm') {
      print('La multiplicacion de $num1 + $num2 es igual a ${multiplicar()}');
    } else if (operacion == 'd') {
      print('La division de $num1 + $num2 es igual a ${dividir()}');
    } else if (operacion == 'r') {
      print('La suma de $num1 + $num2 es igual a ${restar()}');
    } else {
      print('Operación no válida');
    }
  }
}

void main() {
  Calculadora calculadora = new Calculadora(5.0, 3.0, 'd');
  calculadora.calcular();
}
