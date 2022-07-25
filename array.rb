puts '------Creating Arrays------'
# names = Array.new
names = Array.new(20)
# nums = Array.[](1, 2, 3, 4,5)   --Also Valid--
# nums = Array[1, 2, 3, 4, 5]     --Also Valid--
nums = [1, 2, 3, 4, 5]
print nums
puts


puts '---Value to Element---'
# You can assign a value to each element in the array as follows. (Adds Mango 5 times.)
arr1 = Array.new(5, 'Mango')
print arr1
puts

arr2 = Array.new(10) { |e| e *= 2 }
print arr2
puts

digits = Array(1..10)
puts "Digits: #{digits}"

# ------Array Methods------
puts '------Array Methods------'
puts "---at(index)---"
num = digits.at(5)
puts "Digit at 5th index: #{num}"
puts "Digit at 9th index: #{digits[9]}"

puts '---length and size---'
puts names.length     # 20
puts names.size       # 20

puts '---first and last---'
puts digits.first
puts digits.last

puts '---take and drop---'
# The .take method returns the first n elements of the array.
print digits.take(4)
puts
# The .drop method returns the elements after n elements of the array.
print digits.drop(7)
puts

puts "---pop and shift---"
# The .pop method will permantently remove the last element of an array.
digits.pop
print "Digits after pop: #{digits}"
puts
# The .shift method will permantently remove the first element of an array.
digits.shift
print "Digits after shift: #{digits}"
puts

puts "---push and unshift---"
# The .push method will allow you to add an element to the end of an array.
digits.push(1)
print "Digits after push: #{digits}"
puts
# The .unshift method will allow you to add an element to the beginning of an array.
digits.unshift(10)
print "Digits after unshift: #{digits}"
puts

puts "---delete_at and delete---"
# The .delete_at method allows you to permanently remove an element at a specified index.
digits.delete_at(2)
print "Digits after deleting element at 3rd index: #{digits}"
puts
# The .delete method removes a specified element from an array permanently.
digits.delete(9)
print "Digits after deleting 9: #{digits}"
puts
