class Employee
  attr_reader :name
  attr_accessor :salary, :manager_name
  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(salary)
    self.all.select { |employee| employee.salary > salary }
  end

  def self.find_by_department(department)
    self.all.each do |employee| 
      if employee.manager_name.department == department
        return employee
      end
    end
  end

  def tax_bracket
    my_salary = self.salary
    my_salary_below = my_salary - 1000
    my_salary_above = my_salary + 1000
    
    Employee.all.select do |employee| 
      if employee != self
        employee.salary.between?(my_salary_below, my_salary_above) 
      end
    end
  end

end
