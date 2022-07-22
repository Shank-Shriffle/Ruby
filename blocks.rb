# ------Basic Block------
puts '------Basic Block------'
def block_test
  puts 'You are in the method.'
  yield
  puts 'You are again back to the method.'
  yield
end
puts 'This line will be printed before method and block execution.'
block_test { puts 'You are in the block.' }

# Every block calls the method separately.
# (i.e. Here, test method will be called separately for 2nd test block.)
puts '---2nd test block---'
block_test do
  puts '2nd test block.'
  puts 'Still in 2nd block.'
end
# The above one is a Multiline Block.
puts


# ------Block in Class------
puts '------Block in Class------'
class SampleClass
  def self.class_block
    puts 'Hello from class method.'
    yield
  end

  class_block { puts 'I am class block.' }

  def inst_block
    puts 'Hello from inst method.'
    yield
  end

  SampleClass.new.inst_block { puts 'I am inst block.' }
end
puts


# ------Passing Parameter with Yield statement------
puts '------Passing Parameter with Yield statement------'
def para_block
  yield 101, 201 # It will only pass 1st argument.
  puts 'You are in para block method.'
  yield 'String from Yield.'
end
# Variable inside the pipe (|var|) accepts the parameter.
para_block { |i| puts "Prameter from block: #{i}" }
puts

def multi_arg_block
  yield 101, 202
  puts 'This is multi arguments method.'
  yield 'String', 'Concate.'
  # yield 5                  --Invalid Syntax (Error)--
  # puts "Can't use block's local variable here: #{a} #{b}" --Invalid (Error)--
end
# Here a, b, x, y are local variables, their scope is 
# only inside the block(i.e.{ inside braces }) they cannot be
# accessed even inside the same method.
multi_arg_block { |a, b| puts "Multi parameter from block: #{a} #{b}" }
puts
multi_arg_block { |x, y| puts "Sum of parameter from block: #{x + y}" }
puts


# ------Ampersand Parameter (&block)------
puts '------Ampersand Parameter (&block)------'
def amp_para(&ref_name)  # &reference name could be anything.
  puts 'This is amp para method'
  yield
  ref_name.call #same as yield.
end
amp_para { puts 'This is &block example' }
puts


# ------BEGIN and END block------
puts '------BEGIN and END block------'
BEGIN {
  puts 'This is BEGIN block Code.'
  puts '2nd msg from BEGIN.'
}

# END always runs at last, even after at_exit block.
# On code formating in VS Code END is replaced with at_exit.
# END {
#   puts "This is END block code."
# }

at_exit do
  puts 'This is at_exit block code.'
end

# Below code will execute before END block.
puts 'Before END block.'
