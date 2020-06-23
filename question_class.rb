require_relative "player_class"

class Question

  def initialize
    @first = rand(20)
    @second = rand(20)
  end

  def new_question
    puts "What is #{@first} + #{@second}?"
  end

  def answer
    return @first + @second
  end

end