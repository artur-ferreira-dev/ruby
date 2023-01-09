# dado um conjunto de preços, some-os e retorne o total

def total(prices)
    amount = 0 # o total começa em 0
    index = 0 # começa pelo primeiro indice em array
    while index < prices.length # enquanto index for menor que o tamanho do array
        amount += prices[index] # soma a amount o valor dentro do array que é defindo pelo index
        index += 1 # adiciona mais um ao index para percorrer durante todo array, esse preocesso é realizado enquanto o valor de index for menor que o tamanho do array
    end
    amount
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))

# dado um conjunto de preços, subtraia o saldo da conta do cliente
def refund(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount -= prices[index] # por ser devolução, o valor é subtraido
        index += 1
    end
    amount
end
puts format("%.2f", refund(prices))

# dado um conjunto de preços reduza o preço de cada item por 1/3 e imprima a economia

def show_disccounts(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index] / 3.0 # 1/3
        puts format("Your discount: $%.2f",amount_off)
        index += 1
    end
end

show_disccounts(prices)