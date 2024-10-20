class Transporte{
    String? marca;

}

class Aereo extends Transporte{
    int? motores;
}
class Terrestre extends Transporte{
    int? llantas;
}
class Moto extends Terrestre{
    bool? casco;
}
class Carro extends Terrestre{
    bool? aire;
}
class Avion extends Aereo{
    static void manual() => print("Este es un avion");
}

void main(){
    Avion.manual();
    Avion avion = new Avion();
    avion.marca = "Avianca";
    avion.motores = 4;
    print("El avion es marca: ${avion.marca} y tiene ${avion.motores} motores");

    Carro carro = new Carro();
    carro.marca = "Toyota";
    carro.llantas = 4;
    carro.aire = false;
    var aireAcon = carro.aire == true ? "si tiene aire acondicionado" : "no tiene aire acondicionado";
    print("El carro es marca: ${carro.marca}, tiene ${carro.llantas} llantas, y $aireAcon");

    Moto moto = new Moto();
    moto.marca = "Yamaha";
    moto.llantas = 2;
    moto.casco = false;
    var casco = moto.casco == true ? "si tiene casco" : "no tiene casco";
    print("La moto es marca: ${moto.marca}, cuenta con ${moto.llantas} llantas, y $casco");
}