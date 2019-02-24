require "./lib/rubychess/board.rb"

RSpec.describe Board do
	before do
		@board = Board.new
	end
	context "#initialize" do
		it "creates a board with 8 rows" do
			expect(@board.board.length).to eq(8)
		end
		it "each row has 8 squares" do
			@board.board.each do |row|
				expect(row.length).to eq(8)
			end
		end
		it "uses correct coordinates for each square" do
			expect(@board.board[0][0].x).to eq(0)
			expect(@board.board[0][0].y).to eq(0)
			expect(@board.board[0][7].x).to eq(7)
			expect(@board.board[0][7].y).to eq(0)
			expect(@board.board[1][7].x).to eq(7)
			expect(@board.board[1][7].y).to eq(1)
			expect(@board.board[2][0].x).to eq(0)
			expect(@board.board[2][0].y).to eq(2)			
		end
	end

end