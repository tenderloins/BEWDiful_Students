#Why use Objects


# #These are 3 hashes that have the same fields and share a similar behavior
# jimmy = {}
# jimmy[:name] = "Jimmy Mazzy"
# jimmy[:major] = "Math"
# jimmy[:course] = "Math"
# jimmy[:grade]= "A"
# # 
# pepe = {}
# pepe[:name]= "Pepe Phaenagrotis"
# pepe[:major] = "Music"
# pepe[:course] = "Math"
# pepe[:grade] = "C"
# # 
# edward = {}
# edward[:name] = "Edward Ellis"
# edward[:major] = "Math"
# edward[:course] = "Math"
# edward[:grade] = "C"
# # 
# def grade_status(student)
#   if student[:grade] == "F"
#     "failed"
#   elsif student[:major] == student[:course] && student[:grade] >= "C"
#     "failed"
#   else
#     "passed"
#   end
# end
# 
# puts "#{jimmy[:name]} has #{grade_status(jimmy)} #{jimmy[:course]}"
# puts "#{pepe[:name]} has #{grade_status(pepe)} #{pepe[:course]}"
# puts "#{edward[:name]} has #{grade_status(edward)} #{edward[:course]}"





# 1. Refactor to use a class (don't use an initialiser, add getters and setters manually, leave the grade_status method out of the class)

# puts "Version 1."
# class Student
#   
#   def name=(val) #setting variable
#     @name = val #class variable that will be stored within object
#   end
#   
#   def name #returning variable
#     @name
#   end
#   
#   def major=(val) #setting variable
#     @major = val
#   end
#   
#   def major #returning variable
#     @major
#   end
#   
#   def grade=(val) #setting variable
#     @grade = val
#   end
#   
#   def grade #returning variable
#     @grade
#   end
#   
#   def course=(val) #setting variable
#     @course = val
#   end
#   
#   def course #returning variable
#     @course
#   end
# end
# 
# def grade_status(student)
#   if student.grade == "F"
#     "failed"
#   elsif student.major == student.course && student.grade >= "C"
#     "failed"
#   else
#     "passed"
#   end
# end
# 
# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.grade = "C"
# jimmy.course = "BEWD"
# jimmy.major = "BEWD"
# 
# puts "#{jimmy.name} has #{grade_status(jimmy)} #{jimmy.course}"




# 2. Use attr_reader, and attr_writer
# puts "Version 2."
# class Student
#   attr_writer :name, :major, :course, :grade #shortcut for generating all the setters
#   attr_reader :name, :major, :course, :grade #shortcut for generating all the getters
# end
# 
# def grade_status(student)
#   if student.grade == "F"
#     "failed"
#   elsif student.major == student.course && student.grade >= "C"
#     "failed"
#   else
#     "passed"
#   end
# end
# 
# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.grade = "C"
# jimmy.course = "BEWD"
# jimmy.major = "BEWD"
# 
# puts "#{jimmy.name} has #{grade_status(jimmy)} #{jimmy.course}"



# 3. User attr_accessor

# puts "Version 3."
#
# class Student
#   attr_accessor :name, :major, :course, :grade #shortcut for generating all the setters & getters
# end
# 
# def grade_status(student)
#   if student.grade == "F"
#     "failed"
#   elsif student.major == student.course && student.grade >= "C"
#     "failed"
#   else
#     "passed"
#   end
# end
# 
# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.grade = "C"
# jimmy.course = "BEWD"
# jimmy.major = "BEWD"
# 
# puts "#{jimmy.name} has #{grade_status(jimmy)} #{jimmy.course}"




# 4. Move the method in to the class

# puts "Version 4."
# 
# class Student
#   attr_accessor :name, :major, :course, :grade #shortcut for generating all the setters & getters
#   
#   # def grade_status #instance method - run against and instance
# #     if self.grade == "F"  #self refers to the instance we're using
# #       "failed"
# #     elsif self.major == self.course && self.grade >= "C"
# #       "failed"
# #     else
# #       "passed"
# #     end
# #   end
#   
#   def grade_status #instance method - run against and instance
#     if grade == "F"  #refers to the instance we're using
#       "failed"
#     elsif major == course && grade >= "C"
#       "failed"
#     else
#       "passed"
#     end
#   end
#   
# end
# 
# 
# 
# jimmy = Student.new
# jimmy.name = "Jimmy Mazzy"
# jimmy.grade = "C"
# jimmy.course = "BEWD"
# jimmy.major = "BEWD"
# 
# puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"





# 5. Add an initialize and to_s method

puts "Version 5."

class Student
  attr_accessor :name, :major, :course, :grade #shortcut for generating all the setters & getters
  
  def initialize(attributes={}) #can set instance variables when creating the instance
    @name = attributes[:name]
    @major = attributes[:major]
    @course = attributes[:course]
    @grade = attributes[:grade]
  end # should check to see if these are present or throw up an error
  
  def to_s #can use in strings ie instead of #{jimmy.name} we can just use #{jimmy} HOW TO TURN A STUDENT INTO A STRING shortcut
    @name
  end
  
  def grade_status #instance method - run against and instance
    if @grade == "F"  #refers to the instance we're using
      "failed"
    elsif @major == @course && @grade >= "C" # can change to @major to access instance variables directly rather than through the getters/setters
      "failed"
    else
      "passed"
    end
  end
  
end



jimmy = Student.new(:name => "Jimmy Mazzy", :major =>"BEWD", :course => "BEWD", :grade =>"A")

puts "#{jimmy} has #{jimmy.grade_status} #{jimmy.course}"

#puts jimmy.methods.sort.join(", ")  #see all the methods we can use on Student class


