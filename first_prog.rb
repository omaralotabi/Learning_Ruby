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


#if statements 1

ismale = true
istall = false

if ismale && istall
    puts "You are tall male"
elsif ismale || istall
    puts "You are either male or tall"
else
    puts "you are neither male or tall "
end


#if statements 2

def max(x, y, z)
    arr = [x, y, z]
    mx = arr[0]

    for i in 0..2 do
        if arr[i] > mx
            mx = arr[i]
        end
    end
    return mx
end

puts max(5, 7, 2)

=end


def sum(x, y)
    x + y
end

def mult(x, y)
    x * y
end

def div(x, y)
    if y == 0
        puts "you cant divide on 0"
    else
        x / y
    end
end

def sub(x, y)
    x - y
end

arr = []
ch =""

while ch != "Q" || ch != "q"

    puts "write 2 numbers"
    for i in 0..1 do
        arr[i] = gets.chomp().to_f
    end

    puts "
    for sum enter 1
    for sub enter 2
    for mult enter 3
    for div enter 4
    to exit press Q
    "
    ch = gets.chomp()

    case ch
    when "1"
        puts "Result = #{sum(arr[0], arr[1])}"
    when "2"
        puts "Result = #{sub(arr[0], arr[1])}"
    when "3"
        puts "Result = #{mult(arr[0], arr[1])}"
    when "4"
        puts "Result = #{div(arr[0], arr[1])}"
    when "q" , "Q"
        puts "exiting the program"
        break
    else 
        puts "invalid choice"
    end
    
end



