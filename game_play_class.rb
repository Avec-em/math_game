require_relative "player_class"
require_relative "question_class"

class Game_Play

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @players = [@player1, @player2]
  end

  def players_lives
    puts "\n❤️ Player 1: #{@player1.num_lives}/3  \n❤️ Player 2: #{@player2.num_lives}/3"
  end

  def wrong_answer(player)
    player.life_lost
    puts "#{player.id}: 💩NOO"
  end

  def game_message
    if @player1.num_lives > 0 && @player2.num_lives > 0
      puts "--- Next Round ---"
      return true
    else 
      puts "--- Game Over ---"
      player = whose_turn
      puts "#{player.id} is the winner!"
      return false
  end
end

  def whose_turn
    my_turn = @players.first()
    return my_turn
  end

  def next_player
    @players << @players.shift
  end

  def round
    while game_message do
      player = whose_turn
      q = Question.new
      print "#{player.id}: #{q.new_question} "
      user_answer = gets.chomp
      if user_answer.to_i == q.answer
        puts " #{player.id}: 👍YASS"
        next_player
      else
        wrong_answer(player)
        next_player
      end
      players_lives
    end
end
end