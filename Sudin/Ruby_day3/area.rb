class Shape
	def initialize(l,b,r)
		@l = l
		@b = b
		@r = r
	end
end
class Area  < Shape
	def calc
		result = @l * @l
	end
end

class Rect  < Shape
	def calc
		result = @l * @b
	end
end

class Circle < Shape
	def calc
		result = 3.14 * @r * @r
	end
end

s= Circle.new(01,01,10)
s.calc
puts "the radius is #{s.calc}"

s= Area.new(10,20,0)
s.calc
puts "the area is #{s.calc}"

s= Rect.new(10,20,0)
s.calc
puts "the rectangle is #{s.calc}"
