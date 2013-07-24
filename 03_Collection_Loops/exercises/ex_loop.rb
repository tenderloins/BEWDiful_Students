# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(
<<<<<<< HEAD
bottles = 99

while bottles > 0
  if bottles == 1
    puts "#{bottles} bottle of beer on the wall\n#{bottles} bottle of beer!\nYou take one down and pass it around,\n"
    bottles -= 1
    puts "No more bottles of beer on the wall :-(\n\n"
  else
    puts "#{bottles} bottles of beer on the wall\n#{bottles} bottles of beer!\nYou take one down and pass it around,\n"
    bottles -= 1
    if bottles == 1
      puts "#{bottles} bottle of beer on the wall!\n\n"
    else
      puts "#{bottles} bottles of beer on the wall!\n\n"
    end
  end
end


def plural(num_bottles)
  num_bottles.to_s + (num_bottles == 1 ? "bottle" : "bottles")
  # if this ? then that : else that
end
=======
>>>>>>> teacher/master
