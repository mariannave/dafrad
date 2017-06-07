require 'json'
require 'net/http'

# https://swapi.co/documentation
class Util
  def self.load_json(json_web)
    uri = URI(json_web)
    json = Net::HTTP.get(uri)
    JSON.parse(json)
  end
end

class StarWars

  def initialize
    @personagens = Util.load_json('http://swapi.co/api/people/?format=json')
  end

  def make_movie_hash()
    filmes = Util.load_json('http://swapi.co/api/films/?format=json')

    result = filmes['results'].map {|filme| [filme['url'], filme['title']]  }
    Hash[result]
  end

  def list_characters(movie_name)


  end

end

@starwars = StarWars.new()
puts @starwars.make_movie_hash()
