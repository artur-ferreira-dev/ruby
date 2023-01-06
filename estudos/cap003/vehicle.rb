# Herança / Superclasses e subclasses

class Vehicle

        attr_accessor :odometer # as variáveis de instância não são herdadas pelas subclasses, pois esses pertencem ao objeto. Apenas os metodos são herdados.
        attr_accessor :gas_used 

        def accelerate
            puts "Floor it!"
        end

        def sound_horn
            puts "Beep beep!"
        end

        def steer
            puts "Turn front 2 wheels."
        end
        
        def mileage
            return @odometer / @gas_used 
        end

end

class Car < Vehicle
end

class Truck < Vehicle
    attr_accessor :cargo

    def load_bed(contents)
        puts "Securing #{contents} in the truck bed."
        @cargo = contents
    end
end

class Motorcycle < Vehicle
    def steer # o método de instância é sobscrito, utilizando o declarado na subclasse
        puts "Turn front wheel."
    end
end

truck = Truck.new
truck.accelerate
truck.steer

car = Car.new
car.odometer = 11432
car.gas_used = 366  

puts "Lifetime MPG:"
puts car.mileage

motorcycle = Motorcycle.new
motorcycle.steer

#puts car.instance_variables Verifica as variáveis de instância

