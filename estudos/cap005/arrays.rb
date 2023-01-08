prices = [2.99, 25.00, 9.99] # declaração de arrays = [dados], no ruby os arrays podem ser aumentados posteriormente de acordo com a necessidade

puts prices[0] # o array sempre se inicia no 0
puts prices[1]
puts prices[2]

prices[3] = 3.99 # adicionando mais um campo ao array que não existia anteriormente

p prices # inspeciona todo o array e imprime seus valores

prices[6] = 6.99 # adicionando mais um campo ao array que não existia anteriormente, porém os valores dos espaços 4 e 5 ficarão vazios "nil"

p prices

p prices[7] # se for solicitado um espaço no array ainda não criado  será informado nil. nesse caso o array só havia sido criado até o 6 espaço.

puts prices.class # arrays são objetos e podem ser chamados métodos sobre eles.
puts prices.first # mostra qual o primeiro valor do array
puts prices.last # mostra qual o ultimo valor do array
puts prices.length # mostra o tamanho do array
puts prices.include?(25.00) # procura valor dentro de um array, resultado booleano
puts prices.find_index(9.99) # procura valor dentro de um array, quantidade

prices.push(0.99) # inerir elementos em um array
p prices