class Display
  def self.show_lives(players)
    status = players.map { |player| "#{player.name}: #{player.lives} lives" }.join(" | ")
    puts status
  end

  def self.show_winner(player)
    puts "#{player.name} wins with #{player.lives} lives remaining!"
    puts "----- GAME OVER -----"
  end
end
