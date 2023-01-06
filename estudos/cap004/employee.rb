=begin
Codigo para folha de pagamento

Os funcionários são remunerados a cada período de duas semanas alguns recebem uma parte de seu salário anual para um período de duas semanas e outros recebem pelo número de horas trabalhadas no período de duas semanas.

O recibo deve conter o nome do funcionário e o valor da remuneração durante o período de duas semanas, ou seja precisa calcular a remuneração durante esse período.
=end

class Employee

    attr_reader :name, :salary

    def name=(name)
        if name == ""
            raise "Name isn't blank!"
        end
        @name = name
    end

    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} isn't valid!"
        end
        @salary = salary
    end
=begin
    def initialize # metodo para iniciar variaveis a fim de evitar erros de variáveis "vazias".
        @name = "Anonymous"
        @salary = 0.0
    end
=end
    def initialize(name = "Anonymous", salary = 0.0) #quando declarado dessa forma ao criar um novo objeto pra classe podemos setar as variaveis na criação 
        self.name = name 
        self.salary = salary
    end

    def print_pay_stub
        puts "Name: #{@name}"
        pay_for_period = (@salary / 365.0) * 14
        formatted_pay = format("$%.2f", pay_for_period) # format(%.2f) .2 quer dizer que quero apenas duas casas decimais após o ponto no formato float, se quisesse alterar o valor minimo de casas decimais era só colocar quantos numeros gostaria antes do ponto. Tipos mais comuns de format %i(integer) %f (float) %s(string). 
        puts "Pay This Period: #{formatted_pay}"
    end
end

amy = Employee.new("Amy", 50000) # exemplo criando as variaveis na criação do objeto
amy.print_pay_stub
anonymous =  Employee.new # como nao foram declarados as variaveis, é utilizado os valores padrões
anonymous.print_pay_stub

