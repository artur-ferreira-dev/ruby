# Teste de criação de metódos (Simulador de veículos)

def accelerate
    puts "Stepping on the gas"
    puts "Speeding up"
end

def sound_horn
    puts "Pressing the horn button"
    puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
    puts "Turning on #{brightness} headlights"
    puts "Watch out for deer!"
end

sound_horn
accelerate
use_headlights("high-beam")

# Para carregar os metodos criados, devemos digitar 'irb -I .'(define que o irb procure os arquivos no diretório atual) e depois 'require "nome_arquivo"' em um terminal.

def mileage (miles_driven, gas_used)
    if gas_used == 0
        return 0.0
    end
    return miles_driven / gas_used # não é necessário digitar o return aqui, pois a ultima expressão dentro do metódo é considerada o retorno do método.
end

trip_mileage = mileage(400, 12)
puts "You got #{trip_mileage} MPG on this trip."

lifetime_mileage = mileage(11432, 366)
puts "This car averages #{lifetime_mileage} MPG."
