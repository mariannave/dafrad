# http://ruby-doc.org/core-2.4.1/doc/syntax/assignment_rdoc.html

# variable: declaration, assignment, input & output, case sensitive, snake_case, dynamic & strongly typed
# Syntax Error (Identifiers)
# Variables: local, constant, instance, class, global
# Assignment: abbreviated, implicit array, array decomposition
# Pre-defined variables
# Pre-defined global constants

# variable & assignment
variable
variable = 10

# input & output
variable
puts variable # undefined local variable or method `variable' (NameError)
variable = 10
puts variable         #=> 10
p variable            #=> 10
print variable        #=> 10
printf "%d", variable #=> 10 http://ruby-doc.org/core-1.9.3/Kernel.html#method-i-sprintf

variable = gets.chomp
puts variable

# case sensitive
variable = 10
variablE = 100
puts variable #=> 10
puts vAriablE #=> 100

# snake_case
count_product = 10
puts count_product

# dynamic
variable = 10
puts variable #=> 10
variable = 'lorem'
puts variable #=> 'lorem'
variable = :lorem
puts variable #=> :lorem

# strongly typed
variable = 10
puts variable + :1 # syntax error, unexpected tINTEGER
                   # 1.to_s.to_i

# Syntax Error
#   letters, numbers, an _ (underscore or low line) or a character with the eighth bit set
#   no restrictions on the lengths of Ruby identifiers
variable = 10
_variable = 10
$variable = 10
@variable = 10
&variable = 10 # unexpected &
1variable = 10 # unexpected tIDENTIFIER
%variable = 10 # unknown type
module = 10    # unexpected '=' / keyword http://ruby-doc.org/core-2.3.1/doc/keywords_rdoc.html

# Local Variable
variable = 10
puts variable #=> 10

# Constant
Variable = 10
VARIABLE = 20
puts Variable #=> 10
puts VARIABLE #=> 20
# Variable = 20 # warning: already initialized constant Variable

# Instance Variables
@variable = 10
puts @variable #=> 10

# Class Variables
@@varaible = 10
puts @@variable #=> 10

# Global Variables (global_variables)
$variable = 10
puts $variable #=> 10

# Abbreviated Assignment (+, -, *, /, %, **, &, |, ^, <<, >>, ||, &&)
number = 10
number += 1
puts number #=> 11

variable = 0
variable ||= 10
# variable = variable.nil? ? 10 : variable
puts variable #=> 0 or 10

# Implicit Array Assignment
a = 1, 2, 3
puts a.inspect #=> [1, 2, 3]
# Multiple Assignment
a, b = 1, 2
puts a.inspect #=> 1
puts b.inspect #=> 2

# Array Decomposition
(a, b) = [1, 2]
puts a #=> 1
puts b #=> 2

a, (b, c) = 1, [2, 3]
puts a #=> 1
puts b #=> 2
puts c #=> 3

a, (*b), *c = 1, [2, 3, 4], 5, 6
puts a         #=> 1
puts b.inspect #=> [2, 3, 4]
puts c.inspect #=> [5, 6]

a, b, *c = 1, [2, 3, 4], 5, 6
puts a         #=> 1
puts b.inspect #=> [2, 3, 4]
puts c.inspect #=> [5, 6]

a, *b, *c = 1, [2, 3, 4], 5, 6 #=> SyntaxError

# Pre-defined variables
#   http://ruby-doc.org/core-2.3.1/doc/globals_rdoc.html#label-Pre-defined+variables
puts $LOAD_PATH
puts $FILENAME

# Pre-defined global constants
#   http://ruby-doc.org/core-2.4.1/doc/globals_rdoc.html#label-Pre-defined+global+constants
puts ENV
puts RUBY_VERSION
