# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

 class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
   end

  end
end 

# Copy your driver code from the previous exercise and more below:

puts "Calculator Testing"
puts 

simple_calculator = SimpleCalculator.new
advanced_calculator = FancyCalculator.new
wizbang_calculator = WhizBangCalculator.new 


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

  
result = wizbang_calculator.add(4,3)
puts "Wiz Bang Calculator Returned:"
puts result

  if result == 7
    puts "PASS"
  else
   puts "FAIL"
  end

result = wizbang_calculator.subtract(4, 3)
puts "Wiz Bang Calculator Returned:"
puts result


 if result == 1
    puts "PASS"
  else
   puts "FAIL"
  end

result = wizbang_calculator.multiply(4, 3)
puts "Wiz Calculator Returned:"
puts result

  if result == 12
      puts "PASS"
  else
      puts "FAIL"
  end

result = wizbang_calculator.divide(8, 2)
puts "Wiz Calculator Returned:"
puts result

 if result == 4
      puts "PASS"
  else
      puts "FAIL"
  end

result = wizbang_calculator.square_root(16)
puts "Wiz Calculator Returned:"
puts result

  if result == 4
    puts "PASS"
  else
    puts "FAIL"
  end

result = wizbang_calculator.hypotenuse(4,4)
puts "Wiz Calculator Returned:"
puts result

  if result == 5
    puts "PASS"
  else
    puts "FAIL"
  end
result = wizbang_calculator.exponent(4,2)
puts "Wiz Calculator Returned:"
puts result

  if result == 16
    puts "PASS"
  else
    puts "FAIL"
  end


