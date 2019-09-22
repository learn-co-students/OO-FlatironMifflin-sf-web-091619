class Manager
    attr_accessor :name, :department, :age
    @@all = []
    def initialize
        @@all << self
    end
    def employees
        Employee.all.select do |employee|
            employee.manager == self
        end
    end
    def self.all
        @@all
    end
    def hire_employee(name, salary)
        new_emp = Employee.new(name, salary)
        new_emp.manager = self
    end
    def self.all_departments
        @@all.map do |manager|
            manager.department
        end
    end
    def self.average_age
        total = 0
        @@all.each do |manager|
            total += manager.age
        end
        total / @@all.count.to_f
    end


end
