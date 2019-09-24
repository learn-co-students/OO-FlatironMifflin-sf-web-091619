class Employee

    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        @@all.map do |employees|
            employees.salary > amount
        end
    end

    def self.find_by_department(department_name)
        man = Manager.all.find do |manager|
            manager.department == department_name
        end
        man.employees.first
    end

    def find_by_manager_name
        @manager.name
    end

    def tax_bracket
        @@all.select do |employee|
            employee.salary.between?(self.salary - 1000, self.salary + 1000)
        end 
    end

end
