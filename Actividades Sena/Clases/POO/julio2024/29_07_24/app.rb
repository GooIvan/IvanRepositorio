class Camisa
  attr_accessor :talla, :precio, :marca
end

class Pantalon
  attr_accessor :talla, :precio, :marca
end

class Zapato
  attr_accessor :talla, :precio, :marca
end

camiseta = Camisa.new
camiseta.talla = 'XL'
camiseta.precio = 10
camiseta.marca = 'Nike'

pantaloneta = Pantalon.new
pantaloneta.talla = 'L'
pantaloneta.precio = 5
pantaloneta.marca = 'Nike'

tenis = Zapato.new
tenis.talla = 45
tenis.precio = 200
tenis.marca = 'Nike'
