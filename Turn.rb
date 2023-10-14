require_relative 'Question'
require_relative 'Player'

class Turn
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def take_turn
    puts "#{@player.name}: #{@question}"
    player_answer = gets.chomp.to_f

    if player_answer == @question.answer
      puts "Correct!"
      true
    else
      puts "Incorrect!"
      @player.lose_life
      false
    end
  end
end
