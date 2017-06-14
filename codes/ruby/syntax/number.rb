# http://ruby-doc.org/core-2.4.1/Integer.html

# Numeric: Interger, Float, Rational, Complex, BigDecimal
# Ids, Formats, methos
# Benchmark: BigDecimal vs Float

# Interger
puts Integer.superclass #=> Numeric
puts Integer.ancestors.inspect #=> [Integer, Numeric, Comparable, Object, Kernel, BasicObject]

puts 1234.class #=> Interger
puts 1234       #=> 1234
puts -1234      #=> -1234
puts 1_234      #=> 1234
puts 1,234      #=> 1
                #=> 234

  # ids
  puts (1).object_id              #=> 3
  puts (2).object_id              #=> 5
  puts (3).object_id              #=> 7
  puts (2**61).class              #=> Integer
  puts (2**61).object_id.to_s(32) #=> 4000000000001
  puts (2**61).object_id.to_s(32) #=> 4000000000001
  puts (2**62).class              #=> Integer
  puts (2**62).object_id.to_s(32)
  puts (2**62).object_id.to_s(32)

  # decimal format
  puts 0d170234 #=> 170234
  puts 0D170 #=> 170

  # hexadecimal format
  puts 0xaa  #=> 170
  puts 0xAa  #=> 170
  puts 0xAA  #=> 170
  puts 0Xaa  #=> 170
  puts 0XAa  #=> 170
  puts 0XaA  #=> 170

  # octal format
  puts 0252  #=> 170
  puts 0o252 #=> 170
  puts 0O252 #=> 170

  # binary format
  puts 0b10101010 #=> 170
  puts 0B10101010 #=> 170

  # methods
  puts 10 % 2 == 0 #=> true
  puts 10.even?    #=> true
  puts 10.odd?     #=> false
  puts 10 == 0     #=> false
  puts 10.eql? 0   #=> false
  puts 10.eql? 10  #=> true
  puts 10.zero?    #=> false
  puts 1 + 1       #=> 2
  puts 1.+ 1       #=> 2
  puts 1.+(1)      #=> 2
  puts 1+'1'       # String can't be coerced into Integer
  puts 1+'1'.to_i  #=> 2
  puts 1 + 1       #=> 2
  puts 8 - 1       #=> 7
  puts 10 * 2      #=> 20
  puts 35 / 5      #=> 7
  puts 2 ** 5      #=> 32

# Float
puts 12.34         #=> 12.34
puts 1234e-2       #=> 12.34
puts 1.234E1       #=> 12.34
puts 12.34.class   #=> Float
# IEEE 754
puts 1.4-1.2       #=> 0.19999999999999996

# Rational
puts (1/2).class          #=> Integer
puts Rational(1, 2)       #=> 1/2
puts Rational(1, 2).class #=> Rational
puts 0.5.to_r             #=> 1/2

# Complex
puts 3+0i          #=> 3+0i
puts Complex(3, 0) #=> 3+0i
puts 3.to_c        #=> 3+0i

# BigDecimal (StdLib)
require 'bigdecimal'
puts BigDecimal.new('1.4')-BigDecimal.new('1.2')
#=> 0.2e0



# Benchmark
# http://mitrev.net/ruby/2015/08/28/benchmarking-ruby/
require 'benchmark'
require 'bigdecimal'
puts Benchmark.measure { BigDecimal('0.3') - 0.2 }
#  0.000000   0.000000   0.000000 (  0.001514)
puts Benchmark.realtime { BigDecimal('0.3') - 0.2 }
# 1.00000761449337e-05
Benchmark.bm do |x|
  x.report('bigdecimal') { BigDecimal('0.3') - 0.2 }
  x.report('float') { 0.3 - 0.2 }
end
#               user     system      total        real
# bigdecimal  0.000000   0.000000   0.000000 (  0.000010)
# float       0.000000   0.000000   0.000000 (  0.000003)


# https://github.com/evanphx/benchmark-ips
# gem install benchmark-ips
require 'bigdecimal'
require 'benchmark/ips'
Benchmark.ips do |x|
  x.report('bigdecimal1') { BigDecimal('0.3') - 0.2 }
  x.report('bigdecimal2') { BigDecimal('0.3') - 0.2 }
  x.report('float') { 0.3 - 0.2 }
  x.compare!
end
# Comparison:
#                float:  7962119.8 i/s
#          bigdecimal2:   200086.2 i/s - 39.79x  slower
#          bigdecimal1:   188293.6 i/s - 42.29x  slower
