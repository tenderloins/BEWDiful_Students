class Main
  
  def initialize
    puts "\n\n"
    puts "########################################"
    puts "#  Welcome to SearchPlaySongify App!   #"
    puts "#  Written by Craig Ridgwell           #"
    puts "########################################"
    @source = MusicSource.new
  end
  
  def run_app
    #display search instructions and list examples
    @source.search_instructions 
    #run the search and test for empty
    if @source.search_music(user_input).empty?
      #couldnt find any result, try again
      @source.no_results
      run_app
    else
      #list the result that the API found and prompt user
      @source.list_search_results
      user_command(user_input)
    end
  end
   
   
  def user_command(command)
    if command.to_i != 0  #user entered a track number
      @command = command.to_i
      if @command <= @source.track_count && @command > 0 #check for valid track number against the number of search results
        @source.play_song(@command)
        user_command(user_input)
      else
        puts "\n\nYou've entered an invalid song number...\n"
        @source.list_search_results
        user_command(user_input)
      end
    else #not a number
      case command   
      when 's'
        #search again
        @source.stop_song
        run_app
      when 'q'
        #leave program
        @source.stop_song
        puts "\n\nThank you, good bye\n\n"
      else
        #completely foreign command - re-prompt
        puts "You gave me #{command}, sorry dunno what to do with that!"
        user_command(@source.play_song_menu)
      end
    end
  end 
  
  def user_input
    gets.chomp
  end
  
  
end