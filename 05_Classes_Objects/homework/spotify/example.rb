class Example
  
  def initialize
    @example_tracks = [
      "Beastie boys sabotage",
      "Prince purple rain",
      "Mojo juju put a spell on you",
      "Kira puru it gonna be",
      "Killing in the name",
      "Clairy browne baby caught the bus",
      "Custard nice bird",
      "Stooges 1969",
      "Graveyard train get the gold",
      "Gay paris joseph hollybone",
      "Elton john saturday fighting",
      "Moody blues nights in white"
    ]
  end
  
  def list_examples
    @example_tracks.sample(4).each do |example|
      puts "* " + example + "\n"
    end
  end
  
end
