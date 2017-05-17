# Symbol

puts "lorem ipsum dolor".object_id.to_s(32)
puts "lorem ipsum dolor".object_id.to_s(32)
puts :"lorem ipsum dolor".class
puts :"lorem ipsum dolor"
puts :lorem
puts :"lorem ipsum dolor".object_id.to_s(32)
puts :"lorem ipsum dolor".object_id.to_s(32)

pust :1 #=> SyntaxError
pust :"1"
pust :"lorem ipsum"

puts :"lorem ipsum\ndolor"
puts :"1 + 1 = #{1+1}"

puts global_variables.inspect
puts methods.inspect

# methods
puts :lorem.to_s+:ispum.to_s
puts :lorem.to_s<<:ispum.to_s
puts "#{:lorem}#{:ispum}"
