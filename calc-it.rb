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
  print "(p)ower, s(q)quare root: "
  operation = gets.chomp.downcase

end

def get_numbers
  # ask the user for numbers to work on
end

def add(x, y)
 x + y

end

def subtract(x, y)
x+ y
end

def multiply
x * y
end

def divide(x, y)
x / y
end

def sqrt(x, y)
  z = 1/y
  x**z
end

def square(x, y)
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

  response = menu
end
