require 'minitest/autorun'
require_relative 'uai'

class TestMeme < Minitest::Test
  def setup
    @uai = UAI.new
  end

  def test_list_teachers
    expected = [
      "ALBERTO PEREIRA DE BARROS",
      "ALEX SANDRO DA CUNHA REGO",
      "ALLAN PATRICK DE LUCENA COSTA",
      "CAIO SERGIO DE VASCONCELOS BATISTA",
      "CANDIDO JOSE RAMOS DO EGYPTO",
      "CRISHANE AZEVEDO FREIRE",
      "DAMIRES YLUSKA DE SOUZA FERNANDES",
      "DANIEL MATOS DE CARVALHO",
      "DENIO MARIZ TIMOTEO DE SOUSA",
      "EDEMBERG ROCHA DA SILVA",
      "ELIONILDO DA SILVA MENEZES",
      "ERICKA ANULINA CUNHA DE OLIVEIRA",
      "FABRIZIA MEDEIROS DE SOUSA MATOS",
      "FAUSTO VERAS MARANHAO AYRES",
      "FRANCISCO PETRONIO ALENCAR DE MEDEIROS",
      "FREDERICO COSTA GUEDES PEREIRA",
      "GIOVANNI LOUREIRO CABRAL DE MELO",
      "GIOVANNI LOUREIRO FRANCA DE MENDONCA",
      "HEREMITA BRASILEIRO LIRA",
      "JAEL PEREIRA DA SILVA ROCHA",
      "JAILDO TAVARES PEQUENO",
      "JOSE GOMES QUARESMA FILHO",
      "JULIANA DANTAS RIBEIRO VIANA DE MEDEIROS",
      "LAFAYETTE BATISTA MELO",
      "LEANDRO CAVALCANTI DE ALMEIDA",
      "LUCIANA PEREIRA OLIVEIRA",
      "LUIZ CARLOS RODRIGUES CHAVES",
      "MANOEL WALLACE ALVES RAMOS",
      "MARCIO EMANUEL UGULINO DE ARAUJO JUNIOR",
      "MARCUS VINICIUS DELGADO VARANDAS",
      "MARIA THERESA TARGINO DE ARAUJO RANGEL",
      "MARTA LUCIA DE SOUZA CABRAL",
      "NADJA DA NOBREGA RODRIGUES",
      "NIEDSON ALMEIDA LEMOS",
      "NILSON FERNANDES THOMAZ DA SILVA",
      "NILTON FREIRE SANTOS",
      "PAULA OLIVEIRA ADISSI",
      "PAULO DITARSO MACIEL JUNIOR",
      "PAULO ROBERTO SANTOS COSTA",
      "RAFAEL JOSE ALVES DO REGO BARROS",
      "ROSANA DE OLIVEIRA SÁ",
      "VALERIA MARIA BEZERRA CAVALCANTI"
    ]

    teachers = @uai.list_teachers

    assert_equal 42, teachers.length
    assert_equal expected, teachers

    expected = [
      "ALBERTO PEREIRA DE BARROS",
      "ALEX SANDRO DA CUNHA REGO",
      "CANDIDO JOSE RAMOS DO EGYPTO",
      "CRISHANE AZEVEDO FREIRE",
      "DAMIRES YLUSKA DE SOUZA FERNANDES",
      "DENIO MARIZ TIMOTEO DE SOUSA",
      "EDEMBERG ROCHA DA SILVA",
      "ERICKA ANULINA CUNHA DE OLIVEIRA",
      "FAUSTO VERAS MARANHAO AYRES",
      "FRANCISCO PETRONIO ALENCAR DE MEDEIROS",
      "FREDERICO COSTA GUEDES PEREIRA",
      "HEREMITA BRASILEIRO LIRA",
      "JAILDO TAVARES PEQUENO",
      "JOSE GOMES QUARESMA FILHO",
      "JULIANA DANTAS RIBEIRO VIANA DE MEDEIROS",
      "LAFAYETTE BATISTA MELO",
      "LUIZ CARLOS RODRIGUES CHAVES",
      "MARCIO EMANUEL UGULINO DE ARAUJO JUNIOR",
      "MARCUS VINICIUS DELGADO VARANDAS",
      "MARIA THERESA TARGINO DE ARAUJO RANGEL",
      "MARTA LUCIA DE SOUZA CABRAL",
      "NADJA DA NOBREGA RODRIGUES",
      "NILTON FREIRE SANTOS",
      "PAULA OLIVEIRA ADISSI",
      "PAULO DITARSO MACIEL JUNIOR",
      "PAULO ROBERTO SANTOS COSTA",
      "RAFAEL JOSE ALVES DO REGO BARROS",
      "VALERIA MARIA BEZERRA CAVALCANTI"
    ]

    tsi_teachers = @uai.list_teachers(course_name: 'SISTEMAS PARA INTERNET')

    assert_equal 28, tsi_teachers.length
    assert_equal expected, tsi_teachers
  end

  def test_list_courses_involved
    expected = [
      "ADMINISTRACAO M",
      "AUTOMACAO INDUSTRIAL",
      "BACHARELADO EM ENGENHARIA ELETRICA",
      "CONSTRUCAO DE EDIFICIOS",
      "CONTABILIDADE INTEGRADO",
      "CONTROLE AMBIENTAL",
      "EDIFICACOES SUB",
      "ELETROTECNICA INTEGRADO MATUTINO",
      "ELETROTECNICA INTEGRADO VESPERTINO",
      "ELETRÔNICA INTEGRADO",
      "EVENTOS - PROEJA - UA5",
      "EXTENSÃO - PROENEM",
      "GEOPROCESSAMENTO",
      "GEOPROCESSAMENTO NOVO",
      "GESTAO AMBIENTAL",
      "IDIOMAS - LINGUAS ESTRANGEIRAS",
      "LICENCIATURA EM QUIMICA",
      "MECANICA INTEGRADO",
      "MUSICA INTEGRADO",
      "MUSICA SUB",
      "NEGOCIOS IMOBILIARIOS",
      "REDES DE COMPUTADORES",
      "SISTEMAS DE TELECOMUNICACOES",
      "SISTEMAS PARA INTERNET"
    ]

    courses = @uai.list_courses_involved

    assert_equal 24, courses.length
    assert_equal expected, courses
  end

  def test_list_schedule
    expected = [
      {"day"=>"TERÇA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE SCRIPT", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"TERÇA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE SCRIPT", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"TERÇA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE SCRIPT", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"07:00:00", "end"=>"07:50:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"07:50:00", "end"=>"08:40:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"DESENVOLVIMENTO AGIL COM FERRAMENTA RAD", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"15:50:00", "end"=>"16:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"DESENVOLVIMENTO AGIL COM FERRAMENTA RAD", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"16:40:00", "end"=>"17:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"DESENVOLVIMENTO AGIL COM FERRAMENTA RAD", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"SEXTA-FEIRA", "start"=>"08:40:00", "end"=>"09:30:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"SEXTA-FEIRA", "start"=>"09:50:00", "end"=>"10:40:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"SEXTA-FEIRA", "start"=>"10:40:00", "end"=>"11:30:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"SEXTA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"SEXTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}
    ]

    schedules = @uai.list_schedule "LUIZ CARLOS RODRIGUES CHAVES"

    assert_equal 15, schedules.length
    assert_equal expected, schedules
  end

  def test_list_occupied_schedule
    expected = [
      {"day"=>"SEGUNDA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"BANCO DE DADOS II", "teacher"=>"DAMIRES YLUSKA DE SOUZA FERNANDES"}, {"day"=>"SEGUNDA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"BANCO DE DADOS I", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"SEGUNDA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"BANCO DE DADOS II", "teacher"=>"DAMIRES YLUSKA DE SOUZA FERNANDES"}, {"day"=>"SEGUNDA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"BANCO DE DADOS I", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"SEGUNDA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"SEGUNDA-FEIRA", "start"=>"15:50:00", "end"=>"16:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"SEGUNDA-FEIRA", "start"=>"16:40:00", "end"=>"17:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"TERÇA-FEIRA", "start"=>"09:50:00", "end"=>"10:40:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"TERÇA-FEIRA", "start"=>"10:40:00", "end"=>"11:30:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"TERÇA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE SCRIPT", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"TERÇA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"PROGRAMACAO PARA WEB I", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"TERÇA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE SCRIPT", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"TERÇA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"PROGRAMACAO PARA WEB I", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"TERÇA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"PROGRAMACAO DISTRIBUIDA", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"TERÇA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE SCRIPT", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"TERÇA-FEIRA", "start"=>"15:50:00", "end"=>"16:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"PROGRAMACAO DISTRIBUIDA", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"QUARTA-FEIRA", "start"=>"07:00:00", "end"=>"07:50:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"07:50:00", "end"=>"08:40:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"BANCO DE DADOS II", "teacher"=>"DAMIRES YLUSKA DE SOUZA FERNANDES"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"BANCO DE DADOS I", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"BANCO DE DADOS I", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"QUARTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"BANCO DE DADOS II", "teacher"=>"DAMIRES YLUSKA DE SOUZA FERNANDES"}, {"day"=>"QUARTA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"BANCO DE DADOS II", "teacher"=>"DAMIRES YLUSKA DE SOUZA FERNANDES"}, {"day"=>"QUARTA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"QUARTA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"DESENVOLVIMENTO AGIL COM FERRAMENTA RAD", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"15:50:00", "end"=>"16:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"QUARTA-FEIRA", "start"=>"15:50:00", "end"=>"16:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"DESENVOLVIMENTO AGIL COM FERRAMENTA RAD", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUARTA-FEIRA", "start"=>"16:40:00", "end"=>"17:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"DESENVOLVIMENTO AGIL COM FERRAMENTA RAD", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"QUINTA-FEIRA", "start"=>"08:40:00", "end"=>"09:30:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"QUINTA-FEIRA", "start"=>"09:50:00", "end"=>"10:40:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"QUINTA-FEIRA", "start"=>"10:40:00", "end"=>"11:30:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"ALGORITMOS E PROGRAMACAO ESTRUTURADA", "teacher"=>"CRISHANE AZEVEDO FREIRE"}, {"day"=>"QUINTA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"TOPICOS ESPECIAIS", "teacher"=>"DAMIRES YLUSKA DE SOUZA FERNANDES"}, {"day"=>"QUINTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"PROGRAMACAO PARA WEB I", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"QUINTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"TOPICOS ESPECIAIS", "teacher"=>"DAMIRES YLUSKA DE SOUZA FERNANDES"}, {"day"=>"QUINTA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"TOPICOS ESPECIAIS", "teacher"=>"DAMIRES YLUSKA DE SOUZA FERNANDES"}, {"day"=>"QUINTA-FEIRA", "start"=>"14:40:00", "end"=>"15:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"PROGRAMACAO PARA WEB I", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"QUINTA-FEIRA", "start"=>"15:50:00", "end"=>"16:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"PROGRAMACAO DISTRIBUIDA", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"QUINTA-FEIRA", "start"=>"16:40:00", "end"=>"17:30:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"PROGRAMACAO DISTRIBUIDA", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"SEXTA-FEIRA", "start"=>"08:40:00", "end"=>"09:30:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"SEXTA-FEIRA", "start"=>"09:50:00", "end"=>"10:40:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"SEXTA-FEIRA", "start"=>"10:40:00", "end"=>"11:30:00", "course"=>"REDES DE COMPUTADORES", "subject"=>"DESENVOLVIMENTO WEB", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"SEXTA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"SEXTA-FEIRA", "start"=>"13:00:00", "end"=>"13:50:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}, {"day"=>"SEXTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"EDEMBERG ROCHA DA SILVA"}, {"day"=>"SEXTA-FEIRA", "start"=>"13:50:00", "end"=>"14:40:00", "course"=>"SISTEMAS PARA INTERNET", "subject"=>"LINGUAGENS DE MARCAÇÃO", "teacher"=>"LUIZ CARLOS RODRIGUES CHAVES"}
    ]

    unavaliable_side_times = @uai.list_occupied_schedule "CRISHANE AZEVEDO FREIRE",
                          "DAMIRES YLUSKA DE SOUZA FERNANDES",
                          "EDEMBERG ROCHA DA SILVA",
                          "LUIZ CARLOS RODRIGUES CHAVES"

    assert_equal 49, unavaliable_side_times.length
    assert_equal expected, unavaliable_side_times
  end

end
