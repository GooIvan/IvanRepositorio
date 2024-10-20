puts "Numeros de estudiantes"
e = gets.chomp.to_i
for i in 1..e
  puts "Ingrese su primera nota"
  num1 = gets.chomp.to_f
  puts "Ingrese su segunda nota"
  num2 = gets.chomp.to_f
  puts "Ingrese su tercera nota"
  num3 = gets.chomp.to_f
  prom = (num1 + num2 + num3) / 3
  if prom > 6
    puts "Aprobaste la asignatura con #{prom}"
  else
    puts "Reprobaste la asignatura con #{prom}"
  end
