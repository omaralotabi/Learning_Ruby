=begin

arr = Array.new
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



array = ["Omar", "Salem", "Alotabi"]
bol = array.include? "Omar"
puts bol
puts array.sort()


# Hashes
country = {
    1 => "PS",
    :Jordan => "JO",
    "Syria" => "SY"
}

puts country["Palestine"]



#methods\functions

def sayhi(name, age)
    puts "hi #{name} you are #{age} years old"
end

sayhi("omar", 21)


def cube(num)
    return num*num*num, 70
    5
end

puts cube(2)[0]

=end

ismale = true
istall = false

if ismale && istall
    puts "You are tall male"
elsif ismale || istall
    puts "You are either male or tall"
else
    puts "you are neither male or tall "
end