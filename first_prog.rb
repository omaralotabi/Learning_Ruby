arr = []
puts "Enter 2 Numbers : "
for i in 1..2 do
    puts "Enter Number #{i} : "
    input = gets.chomp()
    arr << input.to_i
end

sum = 0
for i in 0..1 do
    sum = sum + arr[i].to_i
end

puts ("\t The summation for the numbers is: " + sum.to_s )  
