###############################################################################
#
# Mid Term Assignment
# by Craig Ridgwell
#
##### PLAN #######
## Greet user and identify the program
## Prompt for song title
## Search Rdio for song title
## Return song title menu
## Prompt for song selection (by number) or for more results (by pressing m)
## Return Album details for Song
#
###############################################################################


$LOAD_PATH.unshift(File.dirname(__FILE__))

#GEMS
require "rdio_api"
#CLASSES
require 'main'
#CONFIGS
require 'rdio_consumer_credentials'

main = Main.new

return_limit = 12
return_start = 0

puts "Search for a song title and find out the artist and what record it is on!"
puts "\nEnter part of a song title: "
search = gets.chomp

# create an instance of the Rdio object with our consumer credentials
rdio = RdioApi.new(:consumer_key => RDIO_CONSUMER_KEY, :consumer_secret => RDIO_CONSUMER_SECRET)


list = rdio.search(:query => search, :types => "Track", :count => return_limit, :start => return_start)
puts "\n\nYou searched for #{search}, we found #{list.number_results} results, showing #{return_limit}\n\n"


list.results.each do |result|
  puts "[ ] " + result.name + " by " + result.artist
end

puts "\nSelect a song by number or press 'm' for more:"



