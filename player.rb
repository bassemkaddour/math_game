# initializes a new player with three lives 
# stores number of lives 
# can decrease lives when question is wrong 

class Player 
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end 

  def lose_life
    @lives -= 1
  end
end 
