class Employee
    attr_accessor :manager, :name, :salary
    @@all = []
    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end
    def manager_name
        self.manager.name
    end
    def self.all
        @@all
    end
    def self.paid_over(number)
        @@all.select do |employee|
            employee.salary > number
        end
    end
    def self.find_by_department(string)
        @@all.find do |employee|
            employee.manager.department == string
        end
    end
    def tax_bracket
        similar_pay = []
        @@all.each do |employee|
            if employee.salary.between?((self.salary - 1000)..(self.salary + 1000)) && employee != self
                similar_pay << employee
            end
        end
        similar_pay
    end



end
