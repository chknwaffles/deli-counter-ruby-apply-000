# Write your code here.
def line(deli)
  msg = ""
  if deli.empty?
    msg += "The line is currently empty."
  else
    msg += "The line is currently: "
    
    deli.each_with_index do |name, index|
      if index == deli.length - 1
        msg += "#{index + 1}. #{name}"
      else
        msg += "#{index + 1}. #{name} "
      end
    end
  end
  
  puts msg
end

def take_a_number(deli, name)
  deli.push(name)
  num = deli.length
  puts "Welcome, #{name}. You are number #{num} in line."
end

def now_serving(deli)
  serving = deli.shift
  if serving == nil
    puts "There is nobody waiting to be served!" 
  else
    puts "Currently serving #{serving}."
  end
end

counter = 0

def take_a_number2(deli)
  counter += 1
  deli.push(counter)
  puts "Welcome, you are number #{counter} in line."
end