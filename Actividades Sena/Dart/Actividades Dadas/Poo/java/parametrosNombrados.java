class HelloWorld {
    public static void main(String[] args) {
        
        
        
        //primer objeto publico
        System.out.println("=====Primer objeto publico=====");
        Publico publico1 = new Publico(12345);
        publico1.ruta = "B-24";
        publico1.empresa = "sobusa";
        publico1.ciudad = "sabanalarga";
        System.out.println(publico1.getInfo());
        System.out.println(publico1.getCodigo());
        
        //segundo objeto publico
        System.out.println("=====Segundo objeto publico=====");
        Publico publico2 = new Publico(54321);
        publico2.ruta = "B-32";
        publico2.empresa = "cotrasool";
        publico2.ciudad = "baranoa";
        System.out.println(publico2.getInfo());
        System.out.println(publico2.getCodigo());
        
        //PRIMER OBJETO PARTICULAR 
        System.out.println("=====primer objeto particular=====");
        Particular particular1 = new Particular(2000);
        particular1.placa = "ABX30H";
        particular1.color = "Negro";
        particular1.ciudad = "malambo";
        System.out.println(particular1.getInfo());
        System.out.println(particular1.getRtm());
        
        //segundo objeto particular
        System.out.println("=====segundo objeto particular=====");
        Particular particular2 = new Particular(2020);
        particular2.placa = "AXX455";
        particular2.color = "Rojo";
        particular2.ciudad = "Soledad";
        System.out.println(particular2.getInfo());
        System.out.println(particular2.getRtm());
    }
}

class Transporte {
    public String empresa;
    public String ciudad;
    String getInfo () {
    return "La empresa es " + empresa + " y la ciudad: " + ciudad;
    }
}

class Publico extends Transporte {
    private int numInterno;
    public String ruta;
    
    Publico(int num) {
        this.numInterno = num;
    }
    String getCodigo() {
    return "El numero interno es " + numInterno + " y la ruta es " + ruta;
    }
}
class Particular extends Transporte{
    public String placa;
    public String color;
    private int modelo;
    
    String getInfo () {
    return "La ciudad es: " + ciudad;
    }
    Particular(int m){
        this.modelo = m;
    }
    int getRtm () {
        int rtm = modelo + 5;
    return rtm;
    }
}