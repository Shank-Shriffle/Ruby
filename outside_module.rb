# The require statement is similar to the include statement of C and C++
# and the import statement of Java.
require_relative 'module'
# require './module'      --Also Valid--

puts "------Outside Module starts here------"
include Tools
Tools.display
# display                 --Also Valid--

class TestClass
  def test_method
    puts "I am test method of Test Class."
  end
end

# Creating object.
obj = TestClass.new

obj.test_method
# Module method called with Class object.
obj.display
