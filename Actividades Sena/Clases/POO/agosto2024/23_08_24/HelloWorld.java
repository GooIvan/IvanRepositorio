class HelloWorld {
    public static void main(String[] args) {
        Perro perrito = new Perro();
        perrito.patas = 4;
        perrito.hacerSonido();

        Gato gatito = new Gato();
        gatito.patas = 4;
        gatito.hacerSonido();
    }
}

interface Animal {
    void hacerSonido();
}

class Perro implements Animal {
    public int patas;

    @Override
    public void hacerSonido() {
        System.out.println("Guau!");
    }
}

class Gato implements Animal {
    public int patas;

    @Override
    public void hacerSonido() {
        System.out.println("Miau!");
    }
}
