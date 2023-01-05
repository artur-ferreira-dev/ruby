# Exercício do capítulo concluído

class Dog

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

def move(destination)
    puts "#{@name} runs to the #{destination}."
end

def talk
    puts "#{@name} says Bark!"
end

def report_age
    puts "#{@name} is #{@age} years old."
end

end

dog = Dog.new

dog.name = "Sandy"
dog.age = 4
dog.report_age
dog.move("bed")
dog.talk

dog2 = Dog.new
dog2.name = "Rex"
dog2.age = 5
dog2.report_age
dog2.move("house")
dog2.talk

=begin
Variáveis de instância de Dog (estado)
name
age
Metódos de instância (comportamento)
move
talk
report_age    
=end


