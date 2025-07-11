# block can be thought as the body for anonymous function, which can be use like callback 

def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block {puts "Call block"}

def who_say_what
  yield("Dave", "hello")
  yield("John", "goodbye")
end

who_say_what {|person, says| puts "#{person} said #{says}"}

animals = ["cat", "dog", "bee"]

animals.each { |animal| puts animal }

5.times { print "*" }
3.upto(6) { |i| print i }

("a".."e").each { print _1 }

# block have access to existing varibles in the outer scope -> does not create new variable with the same name
square = "4 sides"
sum = 0

[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end

# square.length # Error -> square is a number
# Solution:
# 1. block parameters are always local to that block -> parameters will not override the outer variable
# 2. define block-local variables by placing them after a semicolon in the parameter list

[1, 2, 3, 4].each do |value; square|
  square = value * value
  sum += square
end

square.length

# yield will throw an error if a block isn't provided

# block can be used as object (Proc) -> to store inside of a variable
class ProcExample
  def pass_in_block(&action) # If the last parameter in a method definition is prefixed with an ampersand, Ruby looks for a code block whenever that method is called
    @stored_proc = action
  end

  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

example = ProcExample.new
example.pass_in_block { |param| puts "The parameter is #{param}" }
example.use_proc(99)

# lambda and -> (stabby lambda): Enforce the number of arguments (strict arity); return exits only the lambda, not the surrounding method
# proc: Does not enforce number of arguments (extra args are ignored, missing args are nil); return exits the entire method where the proc was defined.

# Stabby lambda (newer syntax)
square = ->(x) { x * x }

# Traditional lambda
square = lambda { |x| x * x }

# Proc
square = Proc.new { |x| x * x }