# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Calculator 

def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end



class SimpleCalculator
    include Calculator 
end

class FancyCalculator
     include Calculator 

  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:

puts "Calculator Testing"
puts 

simple_calculator = SimpleCalculator.new
advanced_calculator = FancyCalculator.new

result = simple_calculator.add(4,3)

puts "Simple Calculator Return:"
puts result


  if result == 7
    puts "PASS"
  else
   puts "FAIL"
  end

result = simple_calculator.subtract(4, 3)
puts "Simple Calculator Returned:"
puts result


 if result == 1
    puts "PASS"
  else
   puts "FAIL"
  end

result = simple_calculator.multiply(4, 3)
puts "Simple Calculator Returnd:"
puts result

  if result == 12
      puts "PASS"
  else
      puts "FAIL"
  end

result = simple_calculator.divide(8, 2)
puts "Simple Calculator Returned:"
puts result

 if result == 4
      puts "PASS"
  else
      puts "FAIL"
  end

  
  
result = advanced_calculator.add(4,3)
puts "Advanced Calculator Returned:"
puts result

  if result == 7
    puts "PASS"
  else
   puts "FAIL"
  end

result = advanced_calculator.subtract(4, 3)
puts "Advanced Calculator Returned:"
puts result


 if result == 1
    puts "PASS"
  else
   puts "FAIL"
  end

result = advanced_calculator.multiply(4, 3)
puts "Advanced Calculator Returned:"
puts result

  if result == 12
      puts "PASS"
  else
      puts "FAIL"
  end

result = advanced_calculator.divide(8, 2)
puts "Advanced Calculator Returned:"
puts result

 if result == 4
      puts "PASS"
  else
      puts "FAIL"
  end

result = advanced_calculator.square_root(16)
puts "Advanced calculator Returned:"
puts result


  if result == 4
    puts "PASS"
  else
    puts "FAIL"
  end