# http://ruby-doc.org/core-2.4.1/doc/syntax/calling_methods_rdoc.html
# http://ruby-doc.org/core-2.4.1/doc/syntax/methods_rdoc.html

# Function: defining, case sensitive, overriding, exception, default values,
#           array decomposition, keyword arguments, array/hash argument
# Block, Proc, Lambda: calling, block argument, yield

# defining functions
def soma(a, b)
  a + b
end
puts soma(1, 2)         #=> 3
puts soma 1, 2          #=> 3
puts soma 1, soma 1, 1  # SyntaxError
puts soma 1, soma(1, 1) #=> 3

# case sensitive
def SOMA(a, b)
  a + b
end
puts SOMA(1, 2) #=> 3

# overriding
def soma(a)
  a
end
puts soma(1)    #=> 3
puts soma(1, 2) # ArgumentError

# exception
def soma(a)
  a
end

begin
  puts soma(1, 2)
rescue
  puts "essa chamada dispara um ArgumentError"
end
puts soma(1)
#=> essa chamada dispara um ArgumentError
#=> 1

# Default Values
def soma(a, b=1)
  a + b
end
puts soma 1, 2 #=> 3
puts soma 1    #=> 2

# Array Decomposition
def soma((a, b))
  a + b
end
puts soma [1, 2]    #=> 3
puts soma [1, 2, 3] #=> 3

def soma((a, *b))
  b = b.inject(:+) if b.is_a? Array
  a + b
end
puts soma([1, 2])    #=> 3
puts soma([1, 2, 3]) #=> 6

def soma(a, (b, c), d)
  [a, c, b, d].compact.inject(:+)
end
puts soma(1, [2, 3], 4) #=> 10
puts soma(1, 2, 4)      #=> 7

# Keyword Arguments
def soma(a:1, b:1)
  a + b
end
puts soma b:3, a:1         #=> 4
puts soma :b => 3, :a => 1 #=> 4
puts soma(b:3)             #=> 4

def soma(a, b:1, c:1)
  a + b + c
end
puts soma 1, b:1, c:1    #=> 3
arguments = [1, {b: 1, c: 1}]
puts soma *arguments     # Array to Arguments Conversion
arguments = {b: 1, c: 1}
puts soma 1, **arguments # Hash to Keyword Arguments Conversion

# Array/Hash Argument
def soma(*values)
  values.inject(:+)
end
puts soma(1, 2, 3, 4)   #=> 10

def soma(a:1, **b)
  a + b.values.inject(:+)
end
puts soma a:1, b:3      #=> 4
puts soma a:1, b:3, c:2 #=> 6

# Block, Proc, Lambda
print_string = Proc.new { |string| puts string }
p print_string.class             #=> Proc
print_string['hello world']      #=> hello world

print_string = proc { |string| puts string }
p print_string.class             #=> Proc
print_string['hello world']      #=> hello world

print_string = lambda { |string| puts string } # lambda
p print_string.class             #=> Proc
print_string.call('hello world') #=> hello world
print_string['hello world']      #=> hello world

print_string = ->(string) { puts string } # lambda
p print_string.class             #=> Proc
print_string['hello world']      #=> hello world

# calling proc
proc = proc {|name| "Hello #{name}"}
lambda = lambda {|name| "Hello #{name}"}
proc.call             #=> Hello
proc.call("Fulano")   #=> Hello Fulano
lambda.call           #=> raise ArgumentError
lambda.call("Fulano") #=> Hello Fulano

def hello(name, output)
  output.call(name)
end
p hello("Fulano", ->(name) {return "Hello #{name}"})
#=> Hello Fulano

def hello(name, output, output2)
  p output.call(name)
  p output2.call(name)
end
hello("Fulano", ->(name) {return "Hello #{name}"},  ->(name) {return "Ola #{name}"})
#=> Hello Fulano
#=> Ola Fulano

# Block Argument
def method_block_example
  yield
end
method_block_example { puts 'hello world' }
#=> hello world

def hello(name, output)
  p output.call(name)
  p yield
end
hello("Fulano", ->(name) {return "Hello #{name}"}) {"Hello Block"}
#=> Hello Fulano
#=> Hello Block

def method_block_example
  yield 'hello world'
end
method_block_example {|string| puts string }
method_block_example {|string| puts string * 2 }
#=> hello world
#=> hello worldhello world

def method_block_example
  yield 'hello world'
  yield 'lorem ipsum'
end
method_block_example {|string| puts string }
#=> hello world
#=> lorem ipsum

def method_block_example(&block)
  block.call 'hello world'
  yield 'hello world'
end
method_block_example {|string| puts string}
#=> hello world
#=> hello world
