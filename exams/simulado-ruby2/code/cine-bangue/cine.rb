require 'json'
require 'byebug'

class Util
  def self.load_json(nome)
    JSON.parse(File.read(nome))
  end
end

class Cine
  def initialize
    # [x] Carregar arquivos
    # [x] Fazer json parse
    # [x] Ter dois arquivos carregados como HASH
    # [] Buscar o ID pelo nome do filme
      # Percorrer o hash de filmes buscando pelo NOME
    # [] Pegar o horário pelo ID

    @filmes = Util.load_json('filmes.json')
    @temporada = Util.load_json('temporada.json')
    @filmes_horarios_cache = []
  end

  def find_movie_id(nome)
    @filmes.each do |chave, valor|
      return chave if nome.casecmp?(valor['nome'])
    end

    nil
  end

  def list_times(nome)
    id = find_movie_id(nome)
    result = []

    @temporada["072017"]["programacao"].each do |data, horario|
      if horario.has_value?(id)
        horario.each { |hora, identificador|
            if identificador == id
              result.push({date: data, time: hora})
            end
        }
      end
    end
    result
  end

  def list_movies(date)
    horarios = @temporada["072017"]["programacao"][date]
    result = []

    if horarios.nil?
      nil
    else
      horarios.each do |hora, id|
        result.push({movie: @filmes[id]["nome"], time: hora})
      end

      result
    end

  end

end
