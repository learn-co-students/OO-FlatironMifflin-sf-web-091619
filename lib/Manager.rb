class Manager

    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select do |employees|
            employees.manager == self
        end
    end

    def self.all
        @@all
    end

    def hire_employee(employee_name, employee_salary)
       new_employee = Employee.new(employee_name, employee_salary, self)
    end

    def all_departments(department_names)
        @@all.map do |employees|
            employees.manager.department == department_names
        end
    end
    
    def average_age
        total = @@all.sum do |manager|
            manager.age
        end
        total / @@all.count.to_f
    end

    # def average_age
    #     total = 0
    #     @@all.each do |manager|
    #         total += manager.age
    #     end
    #     total / @@all.count.to_f
    # end


end
