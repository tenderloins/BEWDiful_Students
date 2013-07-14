class Game
  attr_accessor :secret, :guesses, :guess
  def initialize   
  end
   
  def play_game
    @secret = Random.rand(10) + 1
    @guesses = 3
    @upperlimit = 10
    @lowerlimit = 1
    #run through user guesses
    while @guesses > 0 && @guess != @secret do
       get_guess
       @guesses -= 1
    end
    if @guess != @secret
      puts "You have run out of guesses! The secret number was #{@secret}\n\n"
    end
  end
  
  def get_guess
    puts "Please guess a number between 1 and 10. You have #{@guesses} more chances left."
    @guess = gets.chomp.to_i
    verify_guess
    check_guess
  end
  
  def check_guess
    if @guess < @secret
      puts "\nSorry you guessed too low"
    elsif @guess > @secret
      puts "\nSorry you guessed too high"
    else
      puts "\nGreat scott you got it - Congratulations!"
    end
  end
  
  def verify_guess
    #puts @guess.to_i
    if @guess == 0
      puts "\nYour guess was not a number stupid!\n"
      get_guess
    else
      if @guess < @lowerlimit
        puts "\nYour guess was lower than #{@lowerlimit} which is too low!\n"
        get_guess
      elsif @guess > @upperlimit
        puts "\nYour guess was higher than #{@upperlimit} which is too high!\n"
        get_guess
      end
    end
  end
  
end