require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

sarah = Manager.new("Sarah", "engineering", 30)
paul = Manager.new("Paul", "sales", 27)

sarah.hire_employees("Saul", 50000)
sarah.hire_employees("Joe", 3000)
paul.hire_employees("Sal", 2000)

ann = Employee.new("ann", 100000, paul)
joel = Employee.new("joel", 75000, sarah)
bob = Employee.new("bob", 65000, sarah)
lacy = Employee.new("lacy", 100100, paul)
# ze(name, salary, manager_name)

# puts "list of Sarah's employees"
# p sarah.employees

# p Employee.find_by_department("sales")
# puts
# p Employee.all

p lacy
puts
p lacy.tax_bracket

# puts
# p sarah.employees.map { |employee| employee.salary }



# binding.pry
puts "done"
