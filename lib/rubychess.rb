require "./lib/rubychess/board.rb"
require "./lib/rubychess/piece.rb"
require "./lib/rubychess/player.rb"

class RubyChess
	
	def initialize(player1, player2)
		@player1 = Player.new(player1, "white")
		@player2 = Player.new(player2, "black")		
	end

	def play
		puts "lets play #{@player1.name} and #{@player2.name}"	
	end
end