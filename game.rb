# creates a new game state and initializes the players
# stores current player 
# start method to begin the game 
# initializes both players 

class Game 
  attr_accessor :player1, :player2, :current_player

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player2
    start
  end 

  def start
    while @current_player.lives > 0
      switch_player
      Question.new(@current_player)
      print_score
      puts "\n----- NEW TURN -----"
    end
    switch_player
    game_over

    # Question.new(current_player)
    # print_score
    # puts "\n----- NEW TURN -----"

    # if current_player.lives == 0
    #   switch_player
    #   game_over
    # end
    
    # switch_player
    # start(@current_player) 
  end

  def switch_player
    @current_player = 
      if @current_player == @player1
        @player2
      else 
        @player1
      end 
  end 

  def print_score
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end 

  def game_over 
    puts "#{@current_player.name} wins with a score of #{current_player.lives}/3"
    puts "\n----- GAME OVER -----"
    puts 'Now leave.'
    exit 0
  end
end 