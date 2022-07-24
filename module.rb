module Tools
  def show(para)
    puts "#{para} is my Module."
  end

  def display
    puts "Hello from display method of Tool Module."
  end
end

include Tools
Tools.display
# display            --Also Valid--
Tools.show("Rachel")
# show("Rachel")     --Also Valid--

