# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb. 
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
#



def get_input
	gets.chomp
end

def print_story(story)
	puts "Story: #{story[:title]}\nCategory: #{story[:category]}, Current upvotes: #{story[:votes]}"
end

stories = []

def get_story
  story = {}
  puts "Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!\nPlease enter a story title:"
  story[:title] = get_input
  puts "Please add the story category:"
  story[:category] = get_input

  story[:votes] = 1

  if story[:title].downcase.include? 'cats'
    story[:votes] *= 5
  end
  if story[:title].downcase.include? "bacon"
  	story[:votes] *= 8
  end
  if story[:title].downcase.include? "food"
  	story[:votes] *= 3
  end
  return story
end

def get_story_alt
  {}.tap do |story|  #instead of setting a local variable and then returning it at the end *** MORE RUBY LIKE***
    puts "Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!\nPlease enter a story title:"
    story[:title] = get_input
    puts "Please add the story category:"
    story[:category] = get_input

    story[:votes] = 1

    if story[:title].downcase.include? 'cats'
      story[:votes] *= 5
    end
    if story[:title].downcase.include? "bacon"
      story[:votes] *= 8
    end
    if story[:title].downcase.include? "food"
      story[:votes] *= 3
    end
  end
end

3.times do 
  stories << get_story
end

stories.each do |story|
  print_story(story)
end
