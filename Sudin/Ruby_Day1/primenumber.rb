puts "Enter any number"
n = gets.to_i
f = 1
for i in 2...n
  if n %i != 0
    f=0
  end
end
if f==0
    puts "Sorry number is not prime"

else
      puts "Congrats! given number is prime"
end
