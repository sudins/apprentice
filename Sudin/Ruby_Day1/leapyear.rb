puts "Enter year"
x = gets.to_i
if x % 4 == 0 && x % 100 != 0 || x % 400 == 0
	puts "It's leapyear"	
else
	puts "Its NOT leap year"
end
#