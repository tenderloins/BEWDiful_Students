################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along: Inheritance
#
################################################################################
#
# 1. Create 2 new classes, Employee and Manager.
<<<<<<< HEAD

class Employee #SUPER CLASS
  attr_accessor :first_name, :last_name
  def initialize(first_name,last_name)
    @first_name = first_name
    @last_name = last_name
  end  
  def full_name
    "#{first_name} #{last_name}"
  end
end


##IF CLASSES ARE IN SEPERATE FILES YOU WILL NEED TO INCLUDE THE FILE CONTAINING THE PARENT CLASS, AND POSSIBLY LOAD PATH.##
class Manager < Employee   #SUB CLASS
  attr_accessor :title, :first_name, :last_name
  def initialize(title, first_name, last_name)
    @title = title
    super(first_name,last_name) #call initialize from Employee class but running it within Manager. Looks for a method with the same name as the method we are in
    #@first_name = first_name
    #@last_name = last_name
  end
  def full_name
    "#{super} (#{title})"
  end
end

rupert = Manager.new("CEO", "Rupert", "Murdoch")

puts rupert.full_name


=======
>>>>>>> teacher/master
#
# 2. Change Manager so that it inherits from Employee.
#
# 3. In Employee, create an initialize method that accepts a first and
#    last name and save those into instance variables.
#
# 4. In Manager, create an initialize method that accepts a title,
#    a first, and a last name and save those into instance variables.
#
# 5. Create attr_accessors in each class for the instance variables.
#
# 6. Change your Manager initialize method, so that instead of setting
#    instance variables, it should call the super method of the Employee
#    class.
#
#    super(first_name, last_name)
#
# 7. Create the method full_name in each class.
#
#    In Employee, return a String of the Employee's full name.
#
#    Example: "Rachel Ober"
#
#    In Manager, return a String of the Manager's title,
#    and full name.
#
#    Example: "Rachel Ober (Teacher)"
#
# 8. Finally, create a few examples of Employees and Managers and try
#    different output statements.
#
################################################################################
#
# Student's Solution:
#
################################################################################
