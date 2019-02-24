class Square
	attr_accessor :assigned_piece
	attr_reader :x, :y
	def initialize(x, y, assigned_piece=nil)
		@x, @y, @assigned_piece = x, y, assigned_piece
	end

end