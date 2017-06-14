# String
# http://ruby-doc.org/core-2.4.1/doc/syntax/literals_rdoc.html#label-Strings

# Single Quote, Double Quote, Interpolation, Kernel#format, Percent String
# single character
# heredoc: <<, <<-, <<-', <<~ (squiggly), <<-`
# String OO: Concat (+ <<), Transform (upcase, downcase), empty?, include?
#            split, gsub, *

# Single Quote: (\', \\)
  puts 'lorem ipsum dolor'.class #=> String
  puts 'lorem ipsum dolor'       #=> lorem ipsum dolor
  puts 'lorem\' ipsum dolor'     #=> lorem' ipsum dolor
  puts 'lorem\\ ipsum dolor'     #=> lorem\ ipsum dolor
  puts 'lorem\nipsum dolor'      #=> lorem\nipsum dolor
  puts 'lorem ipsum
dolor'                           #=> lorem ipsum
                                 #=> dolor

# Double Quote
  puts "lorem ipsum dolor".class #=> String
  puts "lorem ipsum dolor"       #=> lorem ipsum dolor
  puts "lorem\nipsum dolor"      #=> lorem
                                 #=> ipsum dolor
  puts "lorem ipsum
  dolor"                         #=> lorem ipsum
                                 #=>    dolor

# Interpolation
  puts '1 + 1 = #{1 + 1}'        #=> 1 + 1 = #{1 + 1}
  puts "1 + 1 = #{1 + 1}"        #=> 1 + 1 = 2

# Kernel#format
  puts "%s:%s" % [10, 10]        #=> 10:10
  puts format("%s", 10)          #=> 10
  puts format("%{valor}", valor: 10) #=> 10

# Percent String
  # http://ruby-doc.org/core-2.4.1/doc/syntax/literals_rdoc.html#label-Percent+Strings
  puts %(lorem ipsum dolor).class #=> String
  puts %(lorem ipsum dolor)       #=> lorem ipsum dolor
  puts %q(1 + 1 is 2)             #=> 1 + 1 is 2
  puts %q[1 + 1 is 2]             #=> 1 + 1 is 2
  puts %q{1 + 1 is 2}             #=> 1 + 1 is 2
  puts %q|1 + 1 is 2|             #=> 1 + 1 is 2
  puts %q!1 + 1 is 2!             #=> 1 + 1 is 2
  puts %q?1 + 1 is 2?             #=> 1 + 1 is 2
  puts %q\1 + 1 is 2\             #=> 1 + 1 is 2
  puts %q(1 + 1 is #{1 + 1})      #=> 1 + 1 is #{1 + 1}
  puts %Q(1 + 1 is 2)             #=> 1 + 1 is 2
  puts %Q(1 + 1 is #{1 + 1})      #=> 1 + 1 is 2
  puts %Q(1 + 1 is\n#{1 + 1})     #=> 1 + 1 is
                                  #=> 2
  puts %Q(1 + 1 is\n#{1 + 1}).inspect #=> "1 + 1 is\n2"
  puts %i(lorem ispum dolor).inspect  #=> [:lorem, :ispum, :dolor]
  puts %s(lorem ispum dolor).inspect  #=> :"lorem ispum dolor"
  puts %r(lorem ispum dolor).inspect  #=> /lorem ispum dolor/
  puts %w(lorem ispum dolor).inspect  #=> ["lorem", "ispum", "dolor"]
  puts %w(lorem\ ispum dolor).inspect #=> ["lorem ispum", "dolor"]
  puts %x(ls)                         # `ls`

# heredoc
  # http://ruby-doc.org/core-2.4.1/doc/syntax/literals_rdoc.html#label-Here+Documents
  puts <<HEREDOC
lorem ipsum
dolor
HEREDOC
  #=> lorem ipsum
  #=> dolor

  puts <<LOREM
lorem ipsum
dolor
LOREM
  #=> lorem ipsum
  #=> dolor

  puts <<-HEREDOC
ls: illegal option -- -
usage: ls [-ABCFGHLOPRSTUWabcdefghiklmnopqrstuwx1] [file ...]
  HEREDOC
  #=> ls: illegal option -- -
  #=> usage: ls [-ABCFGHLOPRSTUWabcdefghiklmnopqrstuwx1] [file ...]

  puts <<-HEREDOC
1 + 1 is #{1 + 1}
  HEREDOC
  #=> 1 + 1 is 2

  puts <<-'HEREDOC'
1 + 1 is #{1 + 1}
  HEREDOC
  #=> 1 + 1 is #{1 + 1}

  # squiggly heredoc (~)
  puts <<~HEREDOC
    lorem ipsum
      dolor
  HEREDOC
  #=> lorem ipsum
  #=>   dolor

  puts <<-`HEREDOC`
  ls
  HEREDOC
  # `ls`

  # Single character
  puts ?a #=> a

# String OO
  # Concat: + <<
  puts "lorem".+("ipsum") #=> loremipsum
  puts "lorem".+ "ipsum"  #=> loremipsum
  puts "lorem"+"ipsum"    #=> loremipsum
  puts "lorem"+1          #=> no implicit conversion of Integer into String
  puts "lorem"+1.to_s     #=> lorem1
  puts "lorem#{1}"        #=> lorem1

  name = "lorem"
  puts name.object_id.to_s(32)
  name << "ipssum"
  puts name                    #=> loremipssum
  puts name.object_id.to_s(32)

  # Transform upcase downcase
  name = "lorem"
  puts name.upcase    #=> LOREM
  puts name           #=> lorem
  puts name.upcase!   #=> LOREM
  puts name           #=> LOREM
  puts name.downcase  #=> lorem
  puts "lorem ipsum dolor".capitalize #=> Lorem ipsum dolor

  # Outros
  puts "".empty?                                 #=> true
  puts "lorem ipsum dolor".include? "dolor"      #=> true
  puts "lorem ipsum dolor".split(" ").inspect    #=> ["lorem", "ipsum", "dolor"]
  puts "lorem ipsum dolor".gsub "dolor", "DOLOR" #=> lorem ipsum DOLOR
  puts "lorem" * 3                               #=> loremloremlorem
