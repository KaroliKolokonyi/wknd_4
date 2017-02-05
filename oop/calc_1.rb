# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

class SimpleCalculator

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

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Write your own driver code below:

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
