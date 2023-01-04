# Criando classes para organizar o código (evitar usar if else demais)
=begin
class Bird # cria a classe Bird

    def talk
        puts "Chirp! Chirp!"
    end

    def move(destination)
        puts "Flying to the #{destination}."
    end

end

class Dog
    @@name = "Class"
    def make_up_name
        @name = "Sandy" # @ define uma variável de instância que ficara disponivel durante todo o código, pois a variável local é removida ao fim da execução do método
    end

    def talk
        puts "#{@@name} says Bark!" # Declarei a variavel diretamente na classe, utilizando @@, apenas para testes
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}."
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

# Criando novos metodos para instancias de classes
bird.move("three")
dog.make_up_name
dog.talk
dog.move ("garden")
bird.talk
cat.move("house")
=end

=begin
# Criando classes utilizando métodos acessores (forma ardua)
class Dog
   
    def name=(new_value)
        @name = new_value
    end
    
    def name
        @name
    end

    def age=(new_value)
        @age = new_value
    end

    def age
        @age
    end

    def report_age
        puts "#{@name} is #{@age} years old"
    end

end

fido = Dog.new
fido.name = "Fido"
fido.age = 2
rex = Dog.new
rex.name = "Rex"
rex.age = 3
fido.report_age
rex.report_age
=end

# Criando gravadores e acessores de atributos (form-short)

class Dog

    attr_accessor :name, :age # realiza a gravação e a leitura de atributos com menos código

    def report_age
        puts "#{@name} is #{@age} years old"
    end

    def talk 
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{name} runs to the destination."
    end

end
fido = Dog.new
fido.name = "Fido"
fido.age = 2
rex = Dog.new
rex.name = "Rex"
rex.age = 3
fido.report_age
rex.report_age