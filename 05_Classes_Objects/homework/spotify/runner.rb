###############################################################################
#
# Mid Term Assignment - Spotify API
# by Craig Ridgwell
#
##### PLAN #######
## Identify the program
## Prompt for song title to search
## Search Spotify for song title
## Return song title menu
## Prompt for play song selection (by number) / search again / quit
#
###############################################################################


$LOAD_PATH.unshift(File.dirname(__FILE__))

#GEMS
require 'hallon'
require 'hallon-openal'
#CONFIGS
require 'spotify_login'
#CLASSES
require 'main'
require 'music_source'
require 'example'

main = Main.new
main.run_app