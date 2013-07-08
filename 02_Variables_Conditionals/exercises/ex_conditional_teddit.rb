# Use your completed version from Teddit strings. 
# Or Copy the code from the strings_exercise_SN_solution.rb
#
# New Teddit Feature! If the Story is about cats multiply the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# If the Story is about Food it gets 3 times the upvotes.

#For example:
# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!


def get_input
	gets.chomp
end

def print_story(title,category,votes)
	puts "Story: #{title}\nCategory: #{category}, Current upvotes: #{votes}"
end

puts "Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!\nPlease enter a story title:"
title = get_input
puts "Please add the story category:"
category = get_input

votes = 1

if title.downcase.include? 'cats'
  votes *= 5
end
if title.downcase.include? "bacon"
	votes *= 8
end
if title.downcase.include? "food"
	votes *= 3
end

print_story(title,category,votes)





