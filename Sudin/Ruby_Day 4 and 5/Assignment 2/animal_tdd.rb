require 'rspec'
describe "mixins" do
	it "Should give complete name" do
		expect(Animal.new.complete_name("frog","rana")).to eq ("frog")
	end
	it "Should give complete human name" do
		expect(Animal.new.complete_namehuman("sudin","shrestha","homosapiens")).to eq ("homosapiens")
	end
end
module Name
	def complete_name(name,sname)
		@s = name
		@t = sname
		@s
	end
	def complete_namehuman(fname,lname,sname)
		@f_name = fname
		@l_name = lname
		@s_name = sname
		@s_name	
	end
end
class Animal
	include Name	
	def initialize
	end
end
