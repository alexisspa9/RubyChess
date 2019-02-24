require "./lib/rubychess.rb"
puts "Welcome to RubyChess"
puts "What is the first's player name?"
player1 = gets.chomp
puts "What is the second's player name?"
player2 = gets.chomp
game = RubyChess.new(player1, player2)
game.play

