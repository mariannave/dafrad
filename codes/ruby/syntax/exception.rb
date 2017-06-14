# http://ruby-doc.org/core-2.3.1/doc/syntax/exceptions_rdoc.html

# method: rescue
# begin...end block: rescue, multiple rescue, else, ensure, raise, warn, $!, $@

# rescue method
def do_something
  # ... do something ...
rescue
  # handle exception
end

# rescue begin...end block
begin
  # ...
rescue ArgumentError, NameError
  # handle ArgumentError or NameError
end

# multiple rescue begin...end block
begin
  # ...
rescue ArgumentError
  # handle ArgumentError
rescue NameError
  # handle NameError
rescue
  # handle any StandardError
end

# rescue else & ensure
begin
  # ...
rescue
  # ...
else
  # this runs only when no exception was raised
ensure
  # this always runs
end

def gt10(number)
  if number > 10
    true
  else
    raise Exception # http://ruby-doc.org/core-2.3.1/Exception.html
  end
rescue Exception => e
  warn e.message
end
p gt10(11) #=> true
p gt10(10) #=> nil
           #   Exception

class NotGreaterThanError < StandardError
end

def gt(result, number)
  raise NotGreaterThanError, "Not greater than error" if result > number
  true
rescue NotGreaterThanError => e
  warn e.message
  puts $! # current exception
  puts $@ # exception’s backtrace
end
p gt(10,20)  #=> true
p gt(100,20) # Not greater than error
             # -e:55:in `gt'
             # -e:63:in `<main>'
             # nil
             # Not greater than error
