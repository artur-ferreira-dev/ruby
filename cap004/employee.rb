

class Employee

    attr_reader :name

    def name=(name)
        if name == ""
            raise "Name isn't blank!"
        end
        @name = name
    end

    def print_name
        puts "Name: #{name}"
    end
    
    def initialize(name = "Anonymous")
        self.name = name
    end

end

class SalariedEmployee < Employee
        
    attr_reader :salary

    def salary=(salary)
        if salary < 0
            puts "A salary of #{salary} isn't valid!"
        end
        @salary = salary
    end

    def print_pay_stub
        print_name
        pay_for_period = (salary / 365.0) * 14
        formatted_pay = format("$%.2f",pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end

    def initialize(name = "Anonymous", salary = 0.0)
        super(name)
        self.salary = salary
    end

end

class HourlyEmployee < Employee
    
    attr_reader :hourly_wage, :hours_peer_week

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

    def print_pay_stub
        print_name
        pay_for_period = hourly_wage * hours_peer_week * 2
        formatted_pay = format("$%.2f",pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_peer_week = 0.0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_peer_week = hours_peer_week
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






