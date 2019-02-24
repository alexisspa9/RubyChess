
require "./lib/rubychess/square.rb"
require "./lib/rubychess/piece.rb"

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
			rows = []
			for j in 0..@columns-1
				rows.push(Square.new(j,i))
			end
			grid.push(rows)
		end
		assign_pieces(grid)
		grid
	end

	def assign_pieces(grid)
		#assign black pieces to the board
		grid[0][0].value = Piece.new("black", piece_type[:Rook])
		grid[0][7].value = Piece.new("black", piece_type[:Rook])
		grid[0][3].value = Piece.new("black", piece_type[:Queen])
		grid[0][4].value = Piece.new("black", piece_type[:King])
		grid[0][1].value = Piece.new("black", piece_type[:Knight])
		grid[0][6].value = Piece.new("black", piece_type[:Knight])
		grid[0][2].value = Piece.new("black", piece_type[:Bishop])
		grid[0][5].value = Piece.new("black", piece_type[:Bishop])
		grid[1][0].value = Piece.new("black", piece_type[:Pawn])
		grid[1][1].value = Piece.new("black", piece_type[:Pawn])
		grid[1][2].value = Piece.new("black", piece_type[:Pawn])
		grid[1][3].value = Piece.new("black", piece_type[:Pawn])
		grid[1][4].value = Piece.new("black", piece_type[:Pawn])
		grid[1][5].value = Piece.new("black", piece_type[:Pawn])
		grid[1][6].value = Piece.new("black", piece_type[:Pawn])
		grid[1][7].value = Piece.new("black", piece_type[:Pawn])
		#assign white pieces to the board
		grid[7][0].value = Piece.new("white", piece_type[:Rook])
		grid[7][7].value = Piece.new("white", piece_type[:Rook])
		grid[7][1].value = Piece.new("white", piece_type[:Knight])
		grid[7][6].value = Piece.new("white", piece_type[:Knight])
		grid[7][2].value = Piece.new("white", piece_type[:Bishop])
		grid[7][5].value = Piece.new("white", piece_type[:Bishop])
		grid[7][3].value = Piece.new("white", piece_type[:Queen])
		grid[7][4].value = Piece.new("white", piece_type[:King])
		grid[6][0].value = Piece.new("white", piece_type[:Pawn])
		grid[6][1].value = Piece.new("white", piece_type[:Pawn])
		grid[6][2].value = Piece.new("white", piece_type[:Pawn])
		grid[6][3].value = Piece.new("white", piece_type[:Pawn])
		grid[6][4].value = Piece.new("white", piece_type[:Pawn])
		grid[6][5].value = Piece.new("white", piece_type[:Pawn])
		grid[6][6].value = Piece.new("white", piece_type[:Pawn])
		grid[6][7].value = Piece.new("white", piece_type[:Pawn])

	end

	def piece_type
		{ 
		King: "King",
		Queen: "Queen",
		Rook: "Rook",
		Bishop: "Bishop",
		Knight: "Knight",
		Pawn: "Pawn"
		}	
	end
end