class Test
  self            # DOUBT
  def self.testing
    puts self
  end

  def testing_new
    puts self
  end
end

print 'testing method prints ClassName: '
Test.testing
print 'testing_new method prints ClassName:Object_id : '
Test.new.testing_new
