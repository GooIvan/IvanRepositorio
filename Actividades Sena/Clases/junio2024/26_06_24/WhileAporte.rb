# variables utilizadas. *todas sin valor*
estudiantes = 0
cantotal = 0
prom = 0

# estas 3 variables las genero para >= 5000, que luego nos sera util.
estudiantesmas5 = 0
cantidadmas5 = 0
promMas5 = 0

# y estas 3 para <5000.
estudiantesmenos5 = 0
cantidadmenos5 = 0
promMenos5 = 0

while cantotal < 50000

# en la variable 'aporte' se guardara lo indicado por el usuario, dependiendo
# lo ingresado sera almacenado en x/y variable.
  puts "Hola, aprendiz, ¿Cuanto desea aportar?"
  aporte = gets.chomp.to_f
  estudiantes += 1
  cantotal += aporte
  prom = cantotal / estudiantes
# la condicion donde si el valor aportado por el ususario es mayor a 5000, sera
# las 3 variables donde se almacenarán los datos.

  if aporte >= 5000
    estudiantesmas5++
    cantidadmas5 += aporte
    promMas5 = (cantidadmas5 / estudiantesmas5)

# al contrario, si el valor no sobrepasa los 5000, tiene 3 variables las cuales
# dependiendo lo escrito, se almacenará dicho caso.
  else
    estudiantesmenos5++
    cantidadmenos5 += aporte
    promMenos5 = (cantidadmenos5 / estudiantesmenos5)
  end
end

puts "La cantidad total recaudada fue de #{cantotal} \n"
puts "El promedio general es de #{prom} \n"
puts "La cantidad de aprendices que donaron 5000 o mas, fueron #{estudiantesmas5} y con estos estudiantes fue recaudado: #{cantidadmas5} con un promedio de #{promMas5} \n"
puts "La cantidad de aprendices que donaron menos de 5000, fueron #{estudiantesmenos5} y con estos estudiantes fue recaudado: #{cantidadmenos5} con un promedio de #{promMenos5}"
