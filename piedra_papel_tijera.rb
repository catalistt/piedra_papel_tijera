def juego

    #Se imprime el menú inicial
    puts " Turno jugador uno:\n    1. Piedra\n    2. Papel\n    3. Tijeras\n    4. Salir"
    print " Elija una opción: "
    jugador1 = gets.chomp.to_i

    #pedir el número al jugador1 hasta que sea válido
    until jugador1 >= 1 && jugador1 <=4
        print " Opción inválida, intente nuevamente: "
        jugador1 = gets.chomp.to_i
    end

    #Si la opción es válida, pasa al siguiente jugador
    if jugador1 == 4 #si es 4, se termina
    else
        puts "\n Turno jugador dos:\n    1. Piedra\n    2. Papel\n    3. Tijeras\n    4. Salir"
        print " Elija una opción: "
        jugador2 = gets.chomp.to_i
        #pedir el número al jugador2 hasta que sea válido
        until jugador2 >= 1 && jugador2 <=4
            print " Opción inválida, intente nuevamente: "
            jugador2 = gets.chomp.to_i
        end

        if jugador2 == 4 #si es 4, termina 
        else #comparación de opciones --> juego en sí
            if jugador1 == jugador2
                puts " Empate"
            elsif (jugador1 == 1 && jugador2 == 2) || (jugador1 == 2 && jugador2 == 3) || (jugador1 == 3 && jugador2 == 1)
                puts " Ganó el jugador2"
            else
                puts " Gabó el jugador1"
            end
        end
    end

end

#Probando
juego()