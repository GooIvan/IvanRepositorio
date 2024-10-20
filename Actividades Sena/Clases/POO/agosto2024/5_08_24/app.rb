class Transporte
  attr_accessor :marca
end

class Aereo < Transporte
  attr_accessor :motores
end

class Terrestre < Transporte
  attr_accessor :llantas
end

class Moto < Terrestre
  attr_accessor :casco
end

class Carro < Terrestre
  attr_accessor :aire
end

class Avion < Aereo
  def self.manual
    puts("Este es un avión")
  end
end

Avion.manual
avion = Avion.new
avion.marca = "Avianca"
avion.motores = 4
puts "El avion es marca: #{avion.marca} y tiene #{avion.motores} motores"

carro = Carro.new
carro.marca = "toyota"
carro.aire = "no tiene"
carro.llantas = 4
puts "El carro es marca #{carro.marca} tiene #{carro.llantas} llantas y #{carro.aire} aire"

moto = Moto.new
moto.marca = "suzuki"
moto.casco = "no tiene"
moto.llantas = 2
puts "La moto es marca #{moto.marca} tiene #{moto.llantas} llantas y #{moto.casco} casco"
