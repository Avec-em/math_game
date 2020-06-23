class Player
  attr_accessor :id, :num_lives

  def initialize(id)
    @id = id
    @num_lives = 3
  end

  def life_lost
    @num_lives -= 1
  end

end


