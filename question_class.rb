class Question

  def initialize
    @first = rand(20)
    @second = rand(20)
  end

  def new_question
    puts "what is #{@first} + #{@second}?"
  end

  def answer
    puts @first + @second
  end

end