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
end

def add
end

def subtract
end

def multiply
end

def divide
end

def sqrt
end

def square
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
