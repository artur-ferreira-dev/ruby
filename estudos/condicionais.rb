# Condicionais
if 1 == 1 # comparador
    puts "I'll be printed"
end

if 1 > 2 
    puts "I won't!"
end

if ! true # torna verdadeiro em falso e inverso também
    puts "I won't be printed!"
end

if 2 != 2 # diferente de
    puts "I won't"
end
 
if not true # em ruby também podemos usar o not
    puts "I won't be printed!"
end

# Para o operador lógico 'e' podemos utilizar o operador &&, para o operador lógico 'ou' podemos utilizar o operador ||
if true && true
    puts "It's true"
end

if true || false
    puts "It's true or false"
end
