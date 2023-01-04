
puts "Bem-vindo ao jogo advinhe o número"
print "Qual o seu nome? "
nome = gets.chomp
puts "Olá, #{nome}"

adivinhar_numero = rand(101)

tentativas = 0

adivinhou = false
while tentativas < 10 && adivinhou == false
puts "Você tem #{10 - tentativas} tentativas restantes"
print "Faça um palpite: "
palpite = gets.to_i
tentativas += 1
if palpite <  adivinhar_numero
    puts "Oops. Seu palpite foi baixo."
elsif palpite > adivinhar_numero
    puts "Oops. Seu palpite foi alto."
elsif palpite == adivinhar_numero
    puts "Bom trabalho. #{nome}!"
    puts "Você acertou o meu número em #{tentativas} tentativas."
    adivinhou = true
end
end
unless adivinhou
    puts "Desculpe, Você não acertou o número. (Era o número #{adivinhar_numero})."
    adivinhou = true
end



