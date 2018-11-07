# creates the questions and checks if they are correct 

class Question 
  attr_accessor :current_player

  def initialize(current_player)
    @current_player = current_player
    self.new_question
  end 

  def new_question 
    n1 = 1 + rand(20)
    n2 = 1 + rand(20)
    print "#{current_player.name}: "
    puts "What does #{n1} + #{n2} equal?"
    print "> " 
    answer = $stdin.gets.chomp.to_i

    if answer == n1 + n2 
      puts 'YES! You are correct.'
    else 
      puts 'Wow. Just wow. No.'
      @current_player.lose_life
    end 
  end 
end 