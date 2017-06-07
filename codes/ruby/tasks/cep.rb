require 'json'
require 'net/http'

uri = URI("https://viacep.com.br/ws/01001000/json/")
json_str = Net::HTTP.get(uri)
cep = JSON.parse(json_str)

cep.each {|key, value|
  puts "#{key}: #{value}"
}
