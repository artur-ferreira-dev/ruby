def my_method(&my_block) # este método aceita um bloco como parâmetro &, o ruby armazena e o converte em um objeto nesse parâmetro.
    puts "We're in the method, about to invoke your block!"
    my_block.call # o método de chamar o bloco
    puts "We're back in the method!"
end
