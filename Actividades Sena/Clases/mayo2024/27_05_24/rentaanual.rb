puts "Colocar tu renta anual"
valor = gets.chomp.to_f
if valor <= 10
    porcentaje = (valor * 20)/100
    resul = valor - porcentaje
    puts "el valor inicial es #{valor} y tu valor a pagar es #{resul}"
else 
    if valor <= 100
        porcentaje = (valor * 10)/100
        resul = valor - porcentaje
        puts "el valor inicial es #{valor} y tu valor a pagar es #{resul}"
    else
        if valor <= 1000
            porcentaje = (valor * 5)/100
            resul = valor - porcentaje
            puts "el valor inicial es #{valor} y tu valor a pagar es #{resul}"
        else
            if valor > 1000
                porcentaje = (valor * 1)/100
                resul = valor - porcentaje
                puts "el valor inicial es #{valor} y tu valor a pagar es #{resul}"
                
            else
            
            end
        end
    end
end