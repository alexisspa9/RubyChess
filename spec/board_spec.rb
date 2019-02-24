require "./lib/rubychess/board.rb"

RSpec.describe Board do
	context "#initialize" do
		it "creates a board with 64 squares" do
			expect(Board.new.board.length).to eq(64)
		end
	end
end