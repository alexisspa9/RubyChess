
require "./lib/rubychess/square.rb"

class Board
	attr_reader :board
	def initialize
		@rows = 8
		@columns = 8
		@board = create_board
	end


	private
	def create_board
		grid = []
		for i in 0..@rows-1
			for j in 0..@columns-1
				grid.push(Square.new(j,i))
			end
		end
		grid
	end
end