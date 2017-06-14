# http://ruby-doc.org/core-2.4.1/doc/syntax/literals_rdoc.html#label-Booleans+and+nil

# http://ruby-doc.org/core-2.4.1/NilClass.html
p nil.class # NilClass
p NIL.class # warning: constant ::NIL is deprecated
p nil.class.superclass # Object

# http://ruby-doc.org/core-2.4.1/FalseClass.html
p false.class # FalseClass
p FALSE.class # warning: constant ::FALSE is deprecated
p false.class.superclass # Object

# http://ruby-doc.org/core-2.4.1/TrueClass.html
p true.class # TrueClass
p TRUE.class # warning: constant ::TRUE is deprecated
p true.class.superclass # Object

p  true ? :true : :false #=> :true
p false ? :true : :false #=> :false
p   nil ? :true : :false #=> :false
