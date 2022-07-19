require 'byebug'
# ------for loop------
for a in 0..5
  puts "Value of local variable is #{a}"
end
puts

# %w Shortcut for making array.
x = %w[Blue Red Green Yellow White]
for i in x
  puts i
end

# ---break---
puts '---break---'
for i in 0..5
  break if i == 3

  puts "Value of local variable is #{i}"
end

# ---next---
puts '---next---'
for i in 0..5
  next if i == 3

  puts "Value of local variable is #{i}"
end

# ---redo---
# puts "---redo---"
# Caution: It will run Infinite Times.
# for i in 0..5
# 	if i > 2
# 		 puts "Value of local variable is #{i}"
# 		 redo
# 	end
# end

# ---retry---    DOUBT
# puts "---retry---"
# for i in 0..5
# 	retry if i > 2
# 	puts "Value of local variable is #{i}"
# end

# ------while loop------
puts '------while loop------'
i = 0
num = 5

while i < num
  puts("Inside while loop i = #{i}")
  i += 1
end

# ---while modifier---
# Without Block
puts '------while loop------'
i = 0
num = 5

puts i += 1 while i < num

# With Block
i = 0
num = 5
begin
  puts("Inside while modifier loop i = #{i}")
  i += 1
end while i < num

# ------do while------
