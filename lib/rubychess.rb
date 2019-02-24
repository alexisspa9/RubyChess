require "./lib/rubychess/board.rb"
require "./lib/rubychess/piece.rb"
require "./lib/rubychess/player.rb"

class RubyChess
	
	def initialize(player1, player2)
		@player1 = Player.new(player1, "white")
		@player2 = Player.new(player2, "black")	
		@board = Board.new	
	end

	def play
		puts "lets play #{@player1.name} and #{@player2.name}"	
		show_board
	end

	def show_board
		puts "\ta b c d e f g h\n"
		@board.board.each do |square|
			puts square.value
		end


		
	end
end