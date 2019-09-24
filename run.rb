require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

tm = Manager.new("Norris", "Tech", 25)
tt = Manager.new("Bob", "Tech", 35)
te = Employee.new("sdfds", 200, tm)


tt.hire_employee("sdfds", 200)
tm.hire_employee("Jdfdsfim", -200)

binding.pry
puts "done"
