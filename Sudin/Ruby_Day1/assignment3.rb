puts "enter number"
num = gets.to_i
x = 0 
for i in 2...num
	if (num%i == 0)
		x = 0
	else
		x = 1
	end
end
if(x==0)
puts"no prime number"
else
puts "prime number"
end