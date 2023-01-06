class Animal
    
    attr_reader :name, :age

    def name=(value)
        if value == ""
            raise "Name can't be blank!"
        end
        @name = value
    end

    def age=(value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        end
        @age = value
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}"
    end

    def report_age
        puts "#{@name} is #{@age} years old"
    end

end

class Dog < Animal
    def to_s
        "#{@name} the dog, age #{@age}"
    end
end

class Bird < Animal
    def talk
        puts "#{@name} says Chirp! Chirp!"
    end
end

class Cat < Animal
    def talk
        puts "#{@name} says Meow!"
    end
end

class Armadillo
    def move(destination)
        puts "#{@name} unrolls!"
        super # herda os dados da superclasse sem a necessidade de reescrever códigos. poderia ser utilizada descrevendo quais argumentos desejo que sejam utilizados também. ex: super(destination) / super() não declara argumentos
    end
end
#puts Animal.superclass # verifica a superclasse que Animal herda, por padrão quando não definimos a classe ela herda de Object

whiskers = Cat.new
whiskers.name = "Whiskers"
fido = Dog.new
fido.name = "Fido"
fido.age = 4
puts fido # ometodo .to_s já é adicionado automaticamente ao utilizar o puts ou print, o metodo .to_s foi alterado para apresentar os dados do cachorro ao imprimir.
polly = Bird.new
polly.name = "Polly"
polly.age = 2

polly.report_age
fido.move("yard")
whiskers.talk
# puts whiskers.methods # verifica os metodos associados aos objetos da classe