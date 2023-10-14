require_relative 'Player'
require_relative 'Turn'
require_relative 'Display'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def winner
    @player1.lives > 0 ? @player1 : @player2
  end

  def start
    until game_over?
      turn = Turn.new(@current_player)
      turn.take_turn
      Display.show_lives([@player1, @player2])
      switch_player unless game_over?
    end

      Display.show_winner(winner)
  end
end
