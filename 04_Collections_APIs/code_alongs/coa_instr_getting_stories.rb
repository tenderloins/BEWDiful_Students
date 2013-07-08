# Get a feed of the stories from reddit and print them to STDOUT

require 'httpi'  #gem
require 'json'  #standard ruby library


def get_feed(url)
  request = HTTPI::Request.new
  request.url = url 
  HTTPI.get(request).body
end


def parse_feed(url)
  JSON.parse get_feed(url)
end

def print_stories(stories)
  stories.each do |story|
    print_story(story)
  end
end

def print_story(story)
  puts "Source: #{story[:source]}"
  puts "Title: #{story[:title]}"
  puts "Category: #{story[:category]}"
  puts "Votes: #{story[:votes]}"
  puts ""
end

def reddit_feed
  response = parse_feed "http://www.reddit.com/.json"
  response["data"]["children"].map do |story|
    {
      :source   =>  "Reddit",
      :title    =>  story["data"]["title"],
      :category =>  story["data"]["subreddit"],
      :votes    =>  story["data"]["score"] 
    }
  end
end

def mashable_feed
  response = parse_feed "http://mashable.com/stories.json"
  response["new"].map do |story|
    {
      :source   =>  "Mashable",
      :title    =>  story["title"],
      :category =>  story["channel"],
      :votes    =>  story["shares"]["total"]   
    }
  end
end

def digg_feed
  response = parse_feed("http://digg.com/api/news/popular.json")
  response["data"]["feed"].map do |story|
    {
      :source   =>  "Digg",
      :title    =>  story["content"]["title"],
      :category =>  story["content"]["tags"][0]["display"],
      :votes    =>  story["digg_score"]  
    }
  end
end



print_stories reddit_feed

print_stories mashable_feed 

print_stories digg_feed 