class IfElse
  # ------If_Else------
  marks = 75

  if marks >= 80
    puts 'Good Marks'
  elsif  marks <= 79 && marks >= 60
    # elsif (79 >= marks >= 60)          --Syntax Error--
    puts 'Average Marks'
  elsif  marks <= 59 and marks >= 33
    # elsif (59 >= marks >= 33)          --Syntax Error--
    puts 'Low Marks'
  else
    puts 'Fail'
  end

  # ------if Modifier------
  mod = 7

  puts 'Modified' if mod > 5
end

class UnlessElse
  # ------Unless------
  marks = 90

  if marks >= 33
    puts 'Pass!'
  else
    puts 'Fail!'
    # elsif  (marks <=79 and marks >= 60)     --Syntax Error--
    # 	puts "Average Marks"
  end
  # There is no elsif or elsunless for Unless.
end

class Case
  age = 'Ch'
  case age
  when true
    puts 'baby'
  when 'Ch'
    puts 'little child'
  when 7..12            # Range Operator
    puts 'child'
  when 13..18
    puts 'youth'
  else
    puts 'adult'
  end
end
