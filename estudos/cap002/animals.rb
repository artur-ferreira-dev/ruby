# Criando classes para organizar o código (evitar usar if else demais)

class Bird # cria a classe Bird
    def talk
        puts "Chirp! Chirp!"
    end
    def move(destination)
        puts "Flying to the #{destination}."
    end
end
class Dog
    def talk
        puts "Bark!"
    end
    def move(destination)
        puts "Running to the #{destination}."
    end
end 

class Cat
    def talk
        puts "Meow!"
    end
    def move(destination)
        puts "Running to the #{destination}."
    end 
end

# Criando novas instancias de classes
bird = Bird.new 
dog = Dog.new
cat = Cat.new

# Chama metodos sobre as instancias criadas
bird.move("three")
dog.talk
bird.talk
cat.move("house")