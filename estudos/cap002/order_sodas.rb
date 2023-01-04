# Definindo valores padrões (Venda de refrigerantes)

def order_soda(flavor, size = "medium", quantity =1)
    if quantity == 1
        plural = "soda"
    else
        plural = "sodas"
    end
    puts "#{quantity} #{size} #{flavor} #{plural}, coming right up!"
end

order_soda("orange") # especifica o sabor
order_soda("lemon-lime", "small", 2) # especifica tudo
order_soda("grape", "large") # Deixa a quantidade padrão



