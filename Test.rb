# Comments
puts "Testing Basic Syntax"
puts "Trying String " + "Addition."
print "Changing line with escape sequence\n" 
puts 5 / 3.0
print "There are ", 365*24, "hrs in a year."
puts""

# String operation
puts "blink " * 5
puts  2  *  5
puts '2' *  5
puts '2  *  5'

# Palindrome 
x,rev,flag = 656,0,false
temp = x
while x != 0
    rem = x % 10
    rev = rev * 10 + rem
    x = x/10
    
end

if rev == temp
    puts "Palindrome Number"
else
    puts "Non-Palindrome Number"
end

