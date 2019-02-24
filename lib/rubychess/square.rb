class Square
	attr_accessor :value
	attr_reader :x, :y
	def initialize(x,y,value=" ")
		@x, @y, @value = x, y, value
	end

end