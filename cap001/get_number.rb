# Jogo advinhe meu número
# Escrito por Artur Ferreira

# Requisito 1: Pedir que o jogador digite seu nome. Usar seu nome para imprimir uma saudação.
puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets  # puts input.inspect ou p input, pois a saída do input contém uma quebra de linha devido o usuário confirmar o seu nome com a tecla enter
name = input.chomp # método chomp retira a quebra de linha \n
puts "Welcome, #{name}!"
# Requisito 1: Concluído

# Requisito 2: Gerar um número aleatório de 1 a 100 e armazená-lo como um número alvo para o jogador adivinhar.
puts "I\'ve got a random number between 1 and 100."
puts "Can you guess it? "
target = rand(101) # rand gera um número aleatório até um digito abaixo do valor especificado, por isso declarei 1-101
# Requisito 2: Concluído

# Requisito 3: Manter o controle de quantas tentativas o jogador fez. Antes de cada tentativa, deixe-o saber qauntas tentativas (de 10) ainda lhe restam.
num_guesses = 0 # Verificador de tentativas
guessed_it = false

until num_guesses == 10 || guessed_it # Podemos usar o  while num_guesses < 10 && guessed_it == false
# maneira padrão de fazer:
# remaining_guesses = 10 - num_guesses
# puts remaining_guesses.to_s + " guesses left." # método .to_s convert em string
# O Ruby facilita a vida:
puts "#{10 - num_guesses} guesses left."
# Requisito 3: Concluído

# Requisito 4: Solicitar que o jogador tente adivinhar o número alvo.
print "Make a guess: "
guess = gets.to_i
# Requisito 4: Concluído

num_guesses += 1 # adiciona +1 as tentativas realizadas.

# Requisito 5: Se o número sugerido pelo jogador for menor que o número alvo dizer: Seu palpite foi baixo, se for maior que o número alvo dizer Seu palpite foi alto.
# Requisito 6: Se o número sugerido for correto dizer: Parabéns.
if guess < target
    puts "Oops. Your guess was LOW."
elsif guess > target
    puts "Oops. Your guess was HIGH."
elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
end
# Requisitos 5 e 6 concluídos

end #finaliza o while

# Requisito 7: Se o jogador esgotar as tentativas. Dizer o número correto.
unless guessed_it # Substitui if not
    puts "Sorry. You didn't get my number. (It was #{target}.)"
end

# Requisito 8: Deixar o jogador tentar adivinhar até acertar ou esgotar as chances. Concluído usando until.













