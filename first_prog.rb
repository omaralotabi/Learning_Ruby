arr = []
puts "Enter 2 Numbers : "
for i in 1..2 do
    puts "Enter Number #{i} : "
    input = gets.chomp()
    arr << input.to_f
end

sum = 0
for i in 0..1 do
    sum = sum + arr[i]
end

puts ("\t The summation for the numbers is: " + sum.to_s )  

puts "boring game"
for i in 1..3 do
    if i == 1 
        puts "#{i}- Enter your name"
        name = gets.chomp()
    elsif i == 2 
        puts "#{i}- Enter your Age"
        age = gets.chomp()
    else 
        puts "#{i}- which year you was born"
        year = gets.chomp()
    end
end

puts "your name is: #{name}"
puts "your age is: #{age}"
puts "your were born in #{year}"
