
module Name
	def complete_name
		puts "#{@name}(#{@scientific_name})"
	end
	def complete_namehuman
		puts "#{@f_name}#{@l_name}(#{@s_name})"
	end
end

class Animal
	include Name
	def initialize(name, scientific_name)
		@name = name
		@scientific_name = scientific_name
	end
end

class Human
	include Name
	def initialize(first_name, last_name, scientific_name)
		@f_name = first_name
		@l_name = last_name
		@s_name = scientific_name
	end
end

ph = Animal.new("Frog","Rana")
p = Human.new("Sudin"," Shrestha","Homo Sapiens")
ph.complete_name
p.complete_namehuman
