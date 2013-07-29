class MagicEightBallController < ApplicationController
  
  ANSWERS = {
     :positive => #key
       [      
         "It is certain",
         "It is decidedly so",
         "Without a doubt",
         "Yes definitely",
         "You may rely on it",
         "As I see it yes",
         "Most likely",
         "Outlook good",
         "Yes",
         "Signs point to yes"
       ],
     :neutral =>
       [      
         "Reply hazy try again",
         "Ask again later",
         "Better not tell you now",
         "Cannot predict now",
         "Concentrate and ask again"
       ],   
     :negative => 
       [      
         "Don't count on it",
         "My reply is no",
         "My sources say no",
         "Outlook not so good",
         "Very doubtful"
       ]  
   }
  
  
  def index
    
  end
  
  def ask
    @question = params[:question].underscore.humanize + "?"
    @answer_type = ANSWERS.keys.sample #pick a key by random
    @answer = ANSWERS[@answer_type].sample #pick a response from the key in the ANSWERS array
  end
  
end