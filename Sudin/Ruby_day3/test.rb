class A
	def initaialize
	end

	def divison(a,b)
	result = a/b
	puts result
		at_exit do
				if result == 0
					puts "exiting"
				end
		end
		raise "ZeroDivisionError"
	end
end
obj= A.new
obj.divison(3,0)



