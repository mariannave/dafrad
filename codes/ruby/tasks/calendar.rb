week_names = %w!DOM SEG TER QUA QUI SEX SAB!

puts "Enter start (#{week_names.join(', ')}):"
start = week_names.index(gets.chomp)
puts "Enter days:"
days = gets.chomp.to_i

puts
puts week_names.join(' ')
print "    " * start
days.times {|day|
  day = day + 1
  print " %02d " % day
  print "\n" if (day+start) % 7 == 0
}
