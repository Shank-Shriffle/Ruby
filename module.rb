# Ruby module is a collection of methods and constants. 
# A module method may be instance method or module method.

# Instance methods are methods in a class when module is included.

# Module methods may be called without creating an encapsulating object 
# while instance methods may not.

# Objects or subclasses can not be created using modules.

module Tools
  def show(para)
    puts "#{para} is my Module."
  end

  def display
    puts 'Hello from display method of Tool Module.'
  end
end

include Tools
# Module methods can be called using Module Name.
Tools.display
# display            --Also Valid--
Tools.show('Tools')
# show("Tools")      --Also Valid--
puts

# ------Multiple Inheritance or Mixin------
puts '------Multiple Inheritance or Mixin------'
# Creating Module.
module Parent_1
  def a1
    puts 'This is Parent one.'
  end
end

module Parent_2
  def a2
    puts 'This is Parent two.'
  end
end

# Creating Class.
class Child
  include Parent_1
  include Parent_2
  def display
    puts 'Three modules have included.'
  end
end
# The class Child shows multiple inheritance or mixin.

# Creating Object.
object = Child.new

# Calling Methods.
object.display
object.a1
object.a2
puts


# ------Testing if Module includes Module------
puts "------Testing if Module includes Module------"
module Module_1
  def m1
    puts "I am Module_1 method."
  end
end

module Module_2
  include Module_1
  def m2
    puts "I am Module_2 Method."
  end
end

class Sample
  include Module_2
  def sample_method
    puts "Sample class includes Module_2, Module_2 includes Module_1."
  end
end

obj = Sample.new

obj.sample_method
obj.m2
obj.m1
puts
