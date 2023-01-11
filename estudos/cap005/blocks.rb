def my_method(&my_block) # este método aceita um bloco como parâmetro &, o ruby armazena e o converte em um objeto nesse parâmetro.
    puts "We're in the method, about to invoke your block!"
    my_block.call # o método de chamar o bloco
    puts "We're back in the method!"
end
 
my_method do 
    puts "We're in the block!" # o bloco que será armazenado em my_block
end

my_method do
    puts "It's a block party!" # o código do bloco pode ser alterado quantas vezes forem necessárias
end

def twice(&my_block)
    puts "In the method, about to call the block!"
    my_block.call # chama o bloco
    puts "Back in the method, about to call the block again!"
    yield # chama o bloco novamente, usando a palavra-chave que faz o mesmo que my_block.call 
    puts "Back in the method, about to return!"
end

twice do
    puts "Woooo!"
end

# Parâmetros de bloco

def give(&my_block)
    yield("2 turtle doves", "1 partridge")
end
# É possível que um bloco aceite um ou mais parâmetros de método. definindo-os entre ||
give do |present1, present2| # parametros que receberão os parametros definidos no metodo de chamada
    puts "My method gave to me..."
    puts present1, present2
end # blocos iniciados e fechados por chaves também são validos, porém a convenção é que seja todo escrito em apenas uma linha.


