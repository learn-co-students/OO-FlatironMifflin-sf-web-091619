class Manager
  attr_reader :name, :department, :age
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees 
    Employee.all.select { |employee| employee.manager_name == self }
  end

  def hire_employees(name, salary)
    Employee.new(name, salary, self)
  end

  def self.all_departments  
    self.class.all.map { |manager| manager.department }.uniq
  end

  def self.average_age  
    ages = self.class.all.map { |manager| manager.age }
    ages.sum / ages.count
  end

end

