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
