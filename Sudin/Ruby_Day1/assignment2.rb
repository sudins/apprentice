puts "Enter year"
x = gets.to_i
if ((x % 2 !=0) ||(x % 3 !=0) ||(x % 5 !=0) ||(x % 7 !=0))
	puts "prime number"	
else
	puts "not prime number"
end