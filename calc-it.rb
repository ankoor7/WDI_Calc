# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def basic_calc
  # ask the user which operation they want to perform
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase

end

def advanced_calc
  # ask the user which operation they want to perform
  print "(p)ower, (s)quare root, (b)ody mass index, (m)ortgage (t)rip cost by car"
  operation = gets.chomp.downcase

end

def get_numbers
  # ask the user for numbers to work on
  print "Give me the first number!!:"
  first_number = gets.chomp.to_f
  print "Give me the second number!!:"
  second_number = gets.chomp.to_f
  numbers = [first_number,second_number]


end

def add(x, y)
 puts x + y
 print "Press anykey to continue"
end

def subtract(x, y)
puts x- y
print "Press anykey to continue"
end

def multiply(x,y)
puts x * y
print "Press anykey to continue"
end

def divide(x, y)
puts x / y
print "Press anykey to continue"
end

def sqrt(x, y)
  z = 1/y
puts  x**z
print "Press anykey to continue"

end

def square(x, y)
  puts x**y
  print "Press anykey to continue"
end

# run the app...

response = menu

while response != 'q'
  case response
  when 'b'
    operation = basic_calc
  when 'a'
    operation = advanced_calc
  end



numbers  = get_numbers

  case operation
  when "a"
    add(numbers[0],numbers[1])
  when "s"
    subtract(numbers[0],numbers[1])
  when "m"
    multiply(numbers[0],numbers[1])
  when "d"
    divide(numbers[0],numbers[1])
  when "p"
      square(numbers[0],numbers[1])
  when "q"
    sqrt(numbers[0],numbers[1])
  end
  gets
  response = menu
end
