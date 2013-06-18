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
  case operation
  when "a" || "s" || "m" || "d" || "p" || "q"
    print "Give me the first number!!:"
    first_number = gets.chomp.to_f
    print "Give me the second number!!:"
    second_number = gets.chomp.to_f
    numbers = [first_number,second_number]
  when  "b"
    print "Give me your height !!:"
    height = gets.chomp.to_f
    print "Give me your weight !!:"
    weight = gets.chomp.to_f
    numbers = [height,weight]
  when "m"
    print "What is the principle of the loan:"
    principle = gets.chomp.to_f
    print "What is the interest rate of the loan:"
    interest = gets.chomp.to_f / 12
    print "Over how many months should we spread the repayment period?:"
    n_payments = gets.chomp.to_f
    numbers = [principle,interest, n_paymetns]
  when "t"
    print "How far did you travel:"
    distance = gets.chomp.to_f
    print "what is the fuel efficiency of the car, in miles per gallon:"
    mpg = gets.chomp.to_f
    print "How much does a gallon of petrol cost?:"
    cost_per_gallon = gets.chomp.to_f
    print "How fast will you drive, in miles per hour?"
    speed = gets.chomp.to_f
    numbers = [distance,mpg, cost_per_gallon,speed]
  end
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

def body_mass_index(weight,height)
  weight/(height**2)
end

def calc_mortgage
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
