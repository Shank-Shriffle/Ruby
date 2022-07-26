# If you need to place an apostrophe within a single-quoted string literal,
# precede it with a backslash, so that the Ruby interpreter does not think that
# it terminates the string.

# puts "Use of double quote (\"\") in String."
puts 'Use of apostrophe (\'\') in String.'
puts

# ------Escape Characters------
puts "Checking new\nline."
puts "Checking\sspace and\ttab."
puts "Checking\vvertical\vtab."
puts

# ------String Methods------
# str = String.new('This is a String.')    # Making string using 'new' keyword.
str = 'This is a String.'

puts '---Upcase & Downcase---'
down_str = str.downcase
up_str = str.upcase
puts down_str, "#{up_str}"

puts "---Capitalize---"
# Capitalizes first letter of string.
str0 = "all small case."        # All small case.
puts str0.capitalize

puts '---Length and Size---'
# size is just an alias to length method. Both give same results. 
puts "Ruby".length, str.length
puts 'Ruby'.size, str.size

puts '---String Interpolation---'
# String interpolation allows you to combine strings together.
name = 'Krishna'
puts "Hello #{name}."
# You can have actual code inside the interpolation #{ }.
# Ruby calls the 'to_s' method on the string interpolation block,
# this tells the object to convert itself into a string.
puts "The total is #{1 + 4}." # "The total is 2."

puts '---Empty---'
# Check Empty String.
# puts 'String'.size == 0
puts 'String'.empty?

puts '---Substring & Replace---'
puts str1 = 'abc123'
# The first number is the starting index. The second number is how many characters you want.
puts str1[0, 3]        # "abc"
puts str1[3, 3]        # "123"
# Now, the first index is still the starting index,
# but the second index is the ending index (inclusive).
# This -2 is the second to last character, and -1 is the end of the string.
puts str1[0..-2]       # "abc12"
puts str1[0..2]        # "abc"
# Replace
str1[2..3] = 'REPLACE'
puts str1

puts '---Include? and Index---'
str2 = 'Today is Saturday.'
puts str2.include?('Saturday')       # true
puts str2.index('day')               # 2

puts '---Start_with? and End_with?---'
# It is Case-sensitive.
puts str2.start_with? 'Today'        # true
puts str2.end_with? 'day.'           # true

puts '---Strip---'
extra_space = '   test    '
puts extra_space.strip               # "test"

puts '---Split---'
str3 = 'C C++ Java Ruby.'
print str3.split
puts
# By default split will use a space as the separator character,
# but you can pass an argument into this method to specify a different separator.
str4 = 'C, C++, Java, Ruby'
print str4.split(',')
puts
str5 = 'Kashmir is intergral part of India.'
print str5.split('i')
puts

puts '---String to Integer using to_i---'
puts '49'.to_i
puts 'abc'.to_i                # 0

puts '---String Concatenation using << and concat---'
str6 = 'Joey: '
puts str6 << 'How'
str6 << ' '
puts str6.concat("u doin?")        # "Joey: How u doin?"

puts '---each_char and chars---'
'Iterate Over'.each_char { |ch| puts ch }
# You can also use the 'chars' method to convert the string into an array of characters.
# Then you can use 'each' on this array to iterate.
print array_of_characters = 'rubyguides'.chars
# ["r", "u", "b", "y", "g", "u", "i", "d", "e", "s"]
puts

puts '---gsub---'
# It replaces text inside a String.
str7 = 'We have many dogs.'
puts str7.gsub('dogs', 'cats')    # "We have many cats"
# The gsub method returns a new string.
# If you want to apply the changes to the original string you can use the gsub! method.

puts "---gets and chomp---"
# gets is used to get input form user.
str8 = gets.chomp                 # DOUBT
puts str8


puts "---count---"
# It counts the occurrence of character. It is Case-sensitive.
str = "Alpa Beta"
puts str.count("a")      # 3
puts str.count("b")      # 1
