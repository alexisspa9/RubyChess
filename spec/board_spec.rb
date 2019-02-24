require "./lib/rubychess/board.rb"

RSpec.describe Board do
	before do
		@board = Board.new
	end
	context "#initialize" do
		it "creates a board with 64 squares" do
			expect(@board.board.length).to eq(64)
		end
		it "uses correct coordinates for each square" do
			expect(@board.board[0].x).to eq(0)
			expect(@board.board[0].y).to eq(0)
			expect(@board.board[7].x).to eq(7)
			expect(@board.board[7].y).to eq(0)
			expect(@board.board[15].x).to eq(7)
			expect(@board.board[15].y).to eq(1)
			expect(@board.board[16].x).to eq(0)
			expect(@board.board[16].y).to eq(2)			
		end
	end
end