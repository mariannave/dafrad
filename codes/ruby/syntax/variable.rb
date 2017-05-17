# http://ruby-doc.org/core-2.3.1/doc/syntax/assignment_rdoc.html

# variable: declaration, assignment, case sensitive, snake_case, dynamic & strongly typed
# Syntax Error (Identifiers)
# Variables: local, constant, instance, class, global
# Assignment: abbreviated, implicit array, array decomposition
# Pre-defined variables
# Pre-defined global constants

# variable & assignment
variable
puts variable # undefined local variable or method `variable' (NameError)
variable = 10
puts variable #=> 10

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
# letters, numbers, an _ (underscore or low line) or a character with the eighth bit set
# no restrictions on the lengths of Ruby identifiers
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
# Variable = 20

# Instance Variables
@variable = 10

# Class Variables
@@varaible = 10

# Global Variables (global_variables)
$variable = 10

# Abbreviated Assignment (+, -, *, /, %, **, &, |, ^, <<, >>, ||, &&)
number = 10
number += 1

# variable = 0
variable ||= number
# if variable.empty?
#   variable
# else
#   number
puts variable

# Implicit Array Assignment
a = 1, 2, 3
puts a.inspect
# Multiple Assignment
a, b = 1, 2
puts a.inspect, b.inspect

# Array Decomposition
(a, b) = [1, 2]
a, (b, c) = 1, [2, 3]
a, (*c), *d = 1, [2, 3, 4], 5, 6
a, c, *d = 1, [2, 3, 4], 5, 6
a, *c, *d = 1, [2, 3, 4], 5, 6 #=> SyntaxError
puts a
puts c.inspect
puts d.inspect

# Pre-defined variables
# http://ruby-doc.org/core-2.3.1/doc/globals_rdoc.html#label-Pre-defined+variables

# Pre-defined global constants
# http://ruby-doc.org/core-2.3.1/doc/globals_rdoc.html#label-Pre-defined+global+constants
