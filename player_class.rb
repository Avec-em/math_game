class Player

  def initialize(id)
    @id = id
    @number_of_lives = 3
  end

  def life_lost(id)
    @number_of_lives -= 1
    @number_of_lives
  end

end


