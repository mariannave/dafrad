# http://ruby-doc.org/core-2.4.1/doc/syntax/control_expressions_rdoc.html

# if Expression: if then, esle, elsif
# Ternary if
# unless Expression
# Modifier if and unless
# case Expression: when, else
# Loop: while, until, for in
# Modifier while and until
# break, next, redo Statement
# Flip-Flop

# if Expression: if then, esle, elsif
number = 10
if number.even? then
  puts "number is even."
end
#=> number is even.

number = 10
if number.even?
  puts "number is even."
end
#=> number is even.

number = 10
result = if number.even?
  "..."
  "number is even."
end
puts result #=> number is even.

number = 10
if number.even?
  puts "number is even."
else
  puts "number is odd."
end
#=> number is even.

number = 10
if number.even?
  puts "number is even."
elsif number.odd?
  puts "number is odd."
else
  puts "it is not a number"
end
#=> number is even.

# Ternary if
number = 10
result = number.even? ? "number is even." : "number is odd."
puts result #=> number is even.

# unless Expression
number = 11
unless number.even? then # if not
  puts "number is not even."
end
#=> number is not even.

number = 10
unless number.odd?
  puts "number is even."
end
#=> number is even.

# Modifier if and unless
number = 10
kind = :odd if number.odd?
kind = :even if number.even?
puts kind #=> even

# case Expression: when, else
name = "lorem ipsum"
case name
when "lorem ipsum"
  puts "it is a lorem"
when "lorem", "ipsum"
  puts "it is contains lorem"
when String
  puts "it is a string"
else
  puts "it is nothing"
end
#=> it is a lorem

# while Loop
number = 0
while number < 3
  number += 1
  puts number
end
#=>
# 1
# 2
# 3

# until Loop
number = 0
until number == 3
  number += 1
  puts number
end
#=>
# 1
# 2
# 3

# for in Loop
for number in (1..3)
  puts number
end
#=>
# 1
# 2
# 3

for number in [1, 2, 3]
  puts number
end
#=>
# 1
# 2
# 3

# Modifier while and until
number = 0
number += 1 while number < 10
puts number #=> 10

# break, next, redo Statement
# for number in (1..10)
#   puts number if number.even?
# end
for number in (1..4)
  next if number.odd?
  puts number
end
#=>
# 2
# 4

# Flip-Flop
for number in (1..5)
  puts number if number==2..number==4
end
#=>
# 2
# 3
# 4
