# ------Simple Method------
puts '------Simple Method------'
def simple_method
  puts 'Welcome to Simple Method.'
end
# Calling of the method.
simple_method
puts

# ------Method with Parameters------
puts '------Method with Parameters------'
def para_method(para1 = 'GFG', para2 = 'G4G')
  puts "First parameter is #{para1}"
  puts "Second parameter is #{para2}"
end

# Calling method with parameters.
para_method 'GeeksforGeeks', 'Sudo'
puts ''
puts 'Without Parameters-'
# Calling method without passing parameters.
para_method
puts

# ------Method with Variable Parameters------
puts '------Method with Variable Parameters------'
def var_para_method(*var_para)
  # To display the total number of parameters.
  puts "Number of parameters is: #{var_para.length}"

  for i in 0...var_para.length
    puts "Parameters are: #{var_para[i]}"
  end
end

# Calling method by passing variable number of arguments.
var_para_method 'Ram', 'Shyam'
var_para_method 'Karan'
puts

# ------Method with Return Statement------
puts '------Method with Return Statement------'
def return_sum
  a = 10
  b = 20
  # sum = a + b
  # return sum
  # Both above 2 & below both statement will give same results.
  a + b
end
puts "Sum of a and b is: #{return_sum}"

def return_default
  x = 15
  y = 25
end
# Every method in Ruby returns value of the last statement by default.
puts "Value of last statement which is returned by default: #{return_default}"

def return_multi
  i = 100
  j = 200
  k = 300
  # return i, j, k or return i, j, 250 both are valid.
  # Below is shortcut for return.
  [i, j, 251]
end
var_ret = return_multi
# Assigning returned values to muliple variables (Correspondingly)
x, y, z = return_multi 
puts "Method returning multiple values: #{return_multi}"
puts var_ret
puts y
puts

# ------Class vs Instance Methods------
puts '------Class vs Instance Methods------'
class TestMethods
  # OR we can write- TestMethods.class_method
  def self.class_method
    puts 'Hello from class method.'
    a = 11
    b = 22
    a + b
  end

  def inst_method
    puts 'Hello from instance method.'
    a = 30
    b = 20
    a - b
  end
  random_var = 112
  puts "#{random_var}"
end

obj = TestMethods.new

puts 'Calling class method: '
TestMethods.class_method
puts 'Calling instance method: '
obj.inst_method
