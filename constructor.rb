# A constructor is a special method of the class which gets automatically
# invoked whenever an instance of the class is created.
# Like methods, a constructor may also contain the group of instructions or
# a method which will execute at the time of object creation.

# Constructors are used to initialize the instance variables.

# In Ruby, the constructor has a different name, unlike other programming languages.

# A constructor is defined using the initialize and def keyword.

# It is treated as a special method in Ruby.

# Constructor can be overloaded in Ruby.

# Constructors can’t be inherited.

# It returns the instance of that class.

# NOTE: Whenever an object of the class is created using new method,
# internally it calls the initialize method on the new object.
# Also, all the arguments passed to new will automatically pass to method initialize.

class Demo
  # Constructor
  def initialize
    puts 'Yeah! Constuctor called.'
  end
end
# Creating Object
Demo.new

class Geeks
  # Constructor
  def initialize
    # Instance variable initialization
    @inst_1 = 'Ram'
    @inst_2 = 'Shyam'
  end

  # display method
  def display
    puts "Value of First instance variable is: #{@inst_1}"
    puts "Value of Second instance variable is: #{@inst_2}"
  end
end
# Creating Object
obj1 = Geeks.new
# Calling display method
obj1.display

# Parameterized Constructor
class Point
  def initialize(x, y)
    @x = x
    @y = y
  end

  def show
    puts "Point x: #{@x}"
    puts "Point y: #{@y}"
  end
end

obj2 = Point.new(12, 'Random!')
obj2.show
