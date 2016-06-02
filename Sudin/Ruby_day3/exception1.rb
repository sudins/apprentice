class A
	def initaialize
	end

	def divison(a,b)
	result = (a/b)
	puts result
		at_exit do
				if result == 0
					puts "exiting exception by 0"
				end
		end
		raise "error"
	end
end
obj= A.new
obj.divison(0,1)



