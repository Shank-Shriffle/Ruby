def block_test
  puts 'You are in the method.'
  yield
  puts 'You are again back to the method.'
  # yield
end
puts 'This line will be printed before method and block execution.'
block_test { puts 'You are in the block.' }

# Every block calls the method separately.
# (i.e. Here, test method will be called separately for 2nd test block.)
puts '---2nd test block---'
block_test { puts '2nd test block' }
puts

# ------Block in Class------
class SampleClass
  def self.class_block
    puts 'Hello from class method.'
    yield
  end
  class_block { puts 'Hello from class block.' }

  def inst_block
    puts 'Hello from inst method.'
    yield
  end
  
  SampleClass.new.inst_block { puts 'Hello from inst block.' }
end



