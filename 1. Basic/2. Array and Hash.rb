a = [1, 'cat', 3.14]
puts "The first element is #{a[0]}"

a[2] = nil
puts "Now the array is #{a}"

instrument_section = {
  "cello" => "string",
}

puts instrument_section["cello"] # -> "string"
puts instrument_section["violin"] # -> nil

histogram = Hash.new(0)
histogram["ruby"] # -> 0
histogram["ruby"] += 1
histogram["ruby"] # -> 1


# advanced
a = [1, 3, 5, 7, 9]

a[2, 3] = "cat" # -> insert the word "cat" at the second index then delete 3 elements
a[2, 0] = "dog" # -> insert the word "dog" at the second index then delete 0 element(s)
a[1, 1] = [9, 8, 7] # -> insert 3 elements 9, 8, 7 (not the array of [9, 8, 7]) at the first index then delete 1 element(s)

# for fast creation array of words or symbols, use %w or %i
a = %w[ant cat dog]
a = %i[ant cat dog]

# common operation: .push .pop - stack .shift .shift - queue
# hash: dig operation -> 