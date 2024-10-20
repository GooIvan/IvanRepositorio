puts "Ingrese un numero entero"
num = gets.chomp.to_i
if num < 0
  puts "Tu numero es 'negativo'"
else
  if num > 0
    print "Tu numero es 'positivo'"
  else
    puts "Tu numero es '0'"
  end
end
