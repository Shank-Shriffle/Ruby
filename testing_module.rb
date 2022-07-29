$LOAD_PATH << '.'

require 'test'

class Testing
  extend Test
  def one
   self.abc
  end
  def self.two
   self.abc
  end
end

# Testing.new.one
Testing.two
