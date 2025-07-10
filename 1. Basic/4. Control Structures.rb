today = Time.now

if today.saturday?
  puts "Do chores"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end

square = 4
# while square < 100
#   square = square * square
# end
square = square * square while square < 100


puts "Square's greater than 100" if square > 100