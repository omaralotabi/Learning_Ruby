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


# calculator

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


# loop throgh array
#1

arr = ["omar","ali","khalid","mohammad","zaid","obaida","Salem"]

for name in arr do
    puts "Name: #{name.upcase}"
end

#2

arr.each do |name|
    puts "Name: #{name.downcase}"
end




# pow method
def pow(base_num, pow_num)
    result = 1.0
    if pow_num >= 0 
        pow_num.times do |index|
            result = result * base_num
        end
    elsif pow_num < 0 
        (-pow_num).times do |index|
            result = result * base_num
        end
        result = 1 / result
    end
    return result
end

puts pow(5,-4)


#reading files 1

file = File.open("hi_ruby.txt", "r")

puts file.read

file.close()

#reading files 2

File.open("hi_ruby.txt", "r") do |file|

    puts file.read()

end
File.open("hi_ruby.txt", "r") do |file|

    puts file.readline()

end

File.open("hi_ruby.txt", "r") do |file|

    puts file.readchar()

end

File.open("hi_ruby.txt", "r") do |file|

    puts file.readlines()[2]
        
    
end

File.open("hi_ruby.txt", "r") do |file|

    for line in file.readlines()
        puts line
    end

    
end

#writing files

#"r" reading only | "r+" read-write ("w", "w+", "a", "a+", "b", "t")

File.open("hi_ruby.txt", "a") do |file|
    file.write("\nHi again")
end

File.open("name.txt", "w") do |file|
    file.write("\nOmar")
end


#Handling Errors
arr = [1, 2, 3, 4, 5, 6]

begin
    #num = 10/0
    arr["hi"]
rescue ZeroDivisionError
    puts "division by 0 error"
rescue TypeError => e
    puts e
end

#classes & objects

class Book
    attr_accessor :title, :author, :pages

    def to_s
        "Title: #{@title}, Author: #{@author}, Pages: #{@pages}"
    end
end

book1 = Book.new()
book1.title = "book name"
book1.author = "omar"
book1.pages = 460

puts book1

book2 = Book.new()
book2.title = "cyprus history"
book2.author = "idk"
book2.pages = 738

puts book2

class Car
    attr_accessor :model, :color, :max_speed

    def to_s
        "Car Model: #{@model}, Car Color: #{@color}, Car Maximum Speed: #{@max_speed}"
    end

end

car1 = Car.new()
car1.model = "ferrari"
car1.color = "red"
car1.max_speed = "360MPh"

puts car1



# initialize method
class Car
    attr_accessor :model, :color, :max_speed

    def initialize(model, color, max_speed)
        @model = model
        @color = color
        @max_speed = max_speed
    end

    def to_s
        "Car Model: #{@model}, Car Color: #{@color}, Car Maximum speed: #{@max_speed}"
    end

end

car1 = Car.new("ferrari", "red", "360MPh")

puts car1

=end


#Object Methods
class Student
    attr_accessor :name, :major, :cgpa

    def initialize(name, major, cgpa)
        @name = name
        @major = major
        @cgpa = cgpa
    end

    def has_honors
        if @cgpa >= 3
            "Student #{@name} has honors"
        else 
            "Student #{@name} does not has honors"
        end
    end

end

student1 = Student.new("Mohammad Ali", "Software Engineering", 2.8)
student2 = Student.new("Saad Safi", "business", 3.1)

puts student1.has_honors