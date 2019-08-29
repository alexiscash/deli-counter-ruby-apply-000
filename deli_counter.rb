# Write your code here.

$currently_serving = 0

def line(array)
  if array == []
    puts "The line is currently empty."
  else
    line_order = ""
    array.each_with_index { |i,j| line_order += "#{j+1}. #{i} " }
    puts "The line is currently: " + line_order.chop!
  end
end

def take_a_number(array)
  $currently_serving += 1
  array.push($currently_serving)
  puts "Welcome, you are number #{$currently_serving}."
end

def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift()
  end
end
