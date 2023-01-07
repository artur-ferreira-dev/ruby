class Employee

 attr_reader :name # O atributo é herdado por SalariedEmployee e HourlyEmployee

    def name=(name)
        if name == ""
            raise "Name isn't blank!"
        end
        @name = name
    end

    def initialize(name = "Anonymous") # Os métodos initialize de SalariedEmployee e HourlyEmployee chamarão esse método via super
        self.name = name
    end

    def print_name # Os métodos print_pay_stub de SalariedEmployee e HourlyEmployee chamarão esse método
        puts "Name: #{name}"
    end
    
end

class SalariedEmployee < Employee
        
    attr_reader :salary # atributo específico dos funcionários assalariados

    def salary=(salary)
        if salary < 0
            puts "A salary of #{salary} isn't valid!"
        end
        @salary = salary
    end

    def initialize(name = "Anonymous", salary = 0.0) # chamado quando chamamos SalariedEmployee.new
        super(name) # Chama o método da superclasse initialize, passando somente o nome
        self.salary = salary # Nós mesmos configuramos o salário, uma vez que é especifico dessa classe.
    end

    def print_pay_stub
        print_name # Faz a superclasse imprimir o nome
        pay_for_period = (salary / 365.0) * 14 # calcula o pagamento de duas semanas
        formatted_pay = format("$%.2f",pay_for_period) # Formata o salário com duas casas decimais
        puts "Pay This Period: #{formatted_pay}" #imprime o salário com a formatação correta.
    end

end

class HourlyEmployee < Employee
    
    attr_reader :hourly_wage, :hours_peer_week

    def self.security_guard(name) # Configura um novo método de classe
        HourlyEmployee.new(name, 19.25, 30) #cria uma nova instância com o salário por hora e as horas por semana
    end

    def self.cashier(name) 
        HourlyEmployee.new(name, 12.75, 25)
    end

    def self.janitor(name)
        HourlyEmployee.new(name, 10.50, 20)
    end
    
    def hourly_wage=(hourly_wage)
        if hourly_wage < 0
            puts "A hourly wage of #{hourly_wage} isn't valid!"
        end
        @hourly_wage = hourly_wage
    end

    def hours_peer_week=(hours_peer_week)
        if hours_peer_week < 0
            puts "The hours peer week of #{hours_peer_week} isn't valid!"
        end
        @hours_peer_week = hours_peer_week
    end

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_peer_week = 0.0) # chamado quando chamamos HourlyEmployee.new
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_peer_week = hours_peer_week
    end

    def print_pay_stub
        print_name
        pay_for_period = hourly_wage * hours_peer_week * 2
        formatted_pay = format("$%.2f",pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end

end

salaried_employee = SalariedEmployee.new
salaried_employee.name = "Jane Doe"
salaried_employee.salary = 50000
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new
hourly_employee.name = "Jhon Smith"
hourly_employee.hourly_wage = 14.97
hourly_employee.hours_peer_week = 30
hourly_employee.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
edwin = HourlyEmployee.janitor("Edwin Burgess")
ivan = HourlyEmployee.cashier("Ivan Stokes")

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub





