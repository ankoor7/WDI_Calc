# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  sleep(5)
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
  print "(p)ower, s(q)quare root: "
  operation = gets.chomp.downcase

end

def get_numbers
  # ask the user for numbers to work on
  print "Give me NUMBERS!!:"
  numbers = gets.chomp.split.map  { |s| s.to_f }
end

def add
end

def subtract
end

def multiply
end

def divide
end

def sqrt(x,y)
  z = 1/y
  x**z
end

def square(x,y)
  x**y
end

# run the app...

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  end

  case operation
  when a
    add(number[0],numbers[1])
  when s
    subtract(number[0],numbers[1])
  when m
    multiply(number[0],numbers[1])
  when d
    divide(number[0],numbers[1])
  when p
    square(number[0],numbers[1])
  when q
    sqrt(number[0],numbers[1])
  end

  response = menu
end
