# http://ruby-doc.org/core-2.3.1/Integer.html

# Numeric: Interger (Fixnum & Bignum), Float, Rational, Complex, BigDecimal
# Ids, Formats, methos

# Interger: Fixnum
puts Fixnum.superclass
puts Fixnum.ancestors.inspect

puts 1234.class #=> Fixnum
puts 1234
puts 1_234
puts 1,234

  # ids
  puts (1).object_id
  puts (2).object_id
  puts (3).object_id
  puts (2**61).class
  puts (2**61).object_id.to_s(32)
  puts (2**61).object_id.to_s(32)

  # decimal format
  puts 0d170
  puts 0D170

  # hexadecimal format
  puts 0xaa
  puts 0xAa
  puts 0xAA
  puts 0Xaa
  puts 0XAa
  puts 0XaA

  # octal format
  puts 0252
  puts 0o252
  puts 0O252

  # binary format
  puts 0b10101010
  puts 0B10101010

  # methods
  puts 10 % 2 == 0
  puts 10.even?
  puts 10.odd?
  puts 10 == 0
  puts 10.eql? 0
  puts 10.zero?
  puts 1+1
  puts 1.+ 1
  puts 1.+(1)
  puts 1+'1'
  puts 1+'1'.to_i
  puts 1 + 1 #=> 2
  puts 8 - 1 #=> 7
  puts 10 * 2 #=> 20
  puts 35 / 5 #=> 7
  puts 2**5 #=> 32

# Interger: Bignum
puts (2**62).class
puts (2**62).object_id.to_s(32)
puts (2**62).object_id.to_s(32)

# Float
puts 12.34
puts 1234e-2
puts 1.234E1
puts 12.34.class

puts 1.4-1.2 # IEEE 754

# Rational
puts (1/2).class
puts Rational(1, 2)
puts 0.5.to_r

# Complex
puts 3+0i
puts Complex(3, 0)
puts 3.to_c

# BigDecimal (StdLib)
require 'bigdecimal'
puts BigDecimal.new('1.4')-BigDecimal.new('1.2')
