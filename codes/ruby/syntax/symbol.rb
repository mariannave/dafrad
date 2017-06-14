# Symbol

puts "lorem"                    #=> lorem
puts "lorem".class              #=> String
puts "lorem".object_id.to_s(32) #=> 1vtml0c4ok
puts "lorem".object_id.to_s(32) #=> 1vtml0c4lg
puts :lorem                     #=> lorem
puts :lorem.class               #=> Symbol
puts :lorem.object_id.to_s(32)  #=> rqus
puts :lorem.object_id.to_s(32)  #=> rqus
puts :"lorem ipsum"             #=> lorem ipsum

puts :1                         #=> SyntaxError
puts :"1"                       #=> 1
puts :"lorem ipsum"             #=> lorem ipsum

puts :"lorem ipsum\ndolor"      #=> lorem ipsum
                                #=> dolor
puts :"1 + 1 = #{1+1}"          #=> 1 + 1 = 2

puts global_variables.inspect   #=> [:$_, :$~, :$;, :$-F ...]
puts methods.inspect            #=> [:inspect, :to_s ...]

# methods
puts :lorem.to_s+:ispum.to_s    #=> loremispum
puts :lorem.to_s<<:ispum.to_s   #=> loremispum
puts "#{:lorem}#{:ispum}"       #=> loremispum
