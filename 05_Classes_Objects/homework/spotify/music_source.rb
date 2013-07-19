class MusicSource
  def initialize
    @session = Hallon::Session.initialize IO.read('./spotify_appkey.key')
    @session.login!(SPOTIFY_USERNAME, SPOTIFY_PASSWORD)
    @now_playing = false
  end
  
  def search_instructions
    puts "\n\nSearch for a song below:\n"
    puts "Hint: you can include the artist name to help narrow down your search!\n\n"
    puts "Here are some excellent examples:"
    examples = Example.new
    examples.list_examples
    puts "\nNow enter your search here:"
  end
  
  def search_music(search_query)
    @search_query = search_query
    @search = Hallon::Search.new(@search_query)
    @search.load
    @tracks = @search.tracks[0...5].map(&:load)
  end
  
  def list_search_results
    puts "\n\nShowing top #{track_count} Results\n\n"
    puts "T R A C K".ljust(28) + "\t" + "A R T I S T".ljust(24) + "\tA L B U M"
    puts "=".ljust(140, "=")
    @tracks.each_with_index do |track, i|
      puts "[#{i+1}] #{track.name[0..24].ljust(24)} \t #{track.artist.name[0..24].ljust(24)} \t #{track.album.name} (#{track.album.release_year})"
      puts "-".ljust(140, "-")
    end
    puts "\n"
    puts "Select a track number to play [1-#{track_count}] or [s] to search again or [q] to quit"
  end
  
  def no_results
    puts "\n\n"
    puts "-".ljust(140, "-")
    puts "I'm sorry we couldn't find any search results for: ***#{@search_query}***"
    puts "-".ljust(140, "-")
  end
  
  def play_song(track_number)
    @track_number = track_number.to_i - 1
    @player = Hallon::Player.new(Hallon::OpenAL)
    @player.play(@tracks[@track_number])
    @now_playing = true
    puts "\n\nNow playing:\n#{@tracks[@track_number].artist.name} - #{@tracks[@track_number].name}\ntaken from #{@tracks[@track_number].album.name}\n"
    play_song_menu
  end
  
  def play_song_menu
    puts "-".ljust(140, "-")
    puts "Options: [s] to search another song     [q] to exit"
    
  end
   
  def stop_song
    if @now_playing
      @player.stop
    end
    @now_playing = false
  end
  
  def track_count
    @tracks.length
  end
  
  def now_playing
    @now_playing
  end
   
   
end