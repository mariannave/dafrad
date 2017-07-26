
Genre.create([
  { id: 1, title: "Ficção científica" },
  { id: 2, title: "Drama" },
  { id: 3, title: "Biografia" },
  { id: 4, title: "Documentário "}
])

Movie.create([
  {
    id: "213",
    title: "O Homem que Caiu na Terra",
    imdb: "tt0074851",
    trailer: "https://www.youtube.com/watch?v=9d0lzHPjMDs",
    country: "Reino Unido",
    year: 1976,
    duration: "139 min.",
    production_company: "Zeta Filmes",
    director: "Nicolas Roeg",
    rating: "16",
    description: "A lenda David Bowie é o alienígena humanoide Thomas Jerome Newton, na antológica ficção científica do diretor Nicolas Roeg. Newton chega à Terra com a missão de levar água ao seu distante planeta natal que vive uma seca catastrófica. Usando a tecnologia avançada de seu planeta para patentear muitas invenções na Terra, Newton, auxiliado pelo advogado Oliver Farnsworth, fica milionário como o líder de um conglomerado tecnológico. E ainda na Terra vive um relacionamento com a camareira Mary-Lou. Bowie, em sua estreia como ator, cria com seu visual andrógino a perfeita imagem de um homem que veio do espaço.",
    genres: Genre.where(id: [1, 2])
  },
  {
    id: "239713",
    title: "Neruda",
    imdb: "tt4698584",
    trailer: "https://www.youtube.com/watch?v=T3O-2RRivDw",
    country: "Chile, Argentina, França, Espanha, Estados Unidos",
    year: 2016,
    duration: "107 min.",
    production_company: "Imovision",
    director: "Pablo Larraín",
    rating: "14 anos",
    description: "Chile, 1948. A chamada Lei Maldita do governo de Gabriel González Videla está a todo vapor para prender os militantes comunistas. Entre eles, o poeta Prêmio Nobel, Pablo Neruda (Luis Gnecco), que começa a ser perseguido incansavelmente pelo inspetor Óscar Peluchonneau (Gael Garcia Bernal).",
    genres: Genre.where(id: [2, 3])
  },
  {
    id: "241697",
    title: "Eu, Daniel Blake",
    imdb: "tt5168192",
    trailer: "",
    country: "Inglaterra",
    year: 2016,
    duration: "97 min.",
    production_company: "Imovision",
    director: "Ken Loach",
    rating: "12 anos",
    description: "Após sofrer um ataque cardíaco e ser desaconselhado pelos médicos a retornar ao trabalho, Daniel Blake busca receber os benefícios concedidos pelo governo a todos que estão nesta situação. Entretanto, ele esbarra na extrema burocracia instalada pelo sistema, amplificada pelo fato dele ser um analfabeto digital. Numa de suas várias idas a departamentos governamentais, ele conhece Katie, a mãe solteira de duas crianças, que se mudou recentemente para a cidade e também não possui condições financeiras para se manter. Após defendê-la, Daniel se aproxima de Katie e passa a ajudá-la.",
    genres: Genre.where(id: [2])
  },
  {
    id: "237706",
    title: "Jonas e o circo sem lona",
    trailer: "https://www.youtube.com/watch?v=5MhkjBfhhTo",
    country: "Brasil",
    year: 2015,
    duration: "81 min.",
    production_company: "Vitrine Filmes",
    director: "Paula Gomes",
    rating: "Livre",
    description: "Jonas tem 13 anos e seu sonho é manter vivo o circo que ele mesmo criou no quintal de sua casa. Enquanto luta por isso, Jonas vai atravessar a grande aventura de crescer.",
    genres: Genre.where(id: [4])
  },
  {
    id: "249370",
    title: "Precisamos falar do Assédio",
    imdb: "tt6222344",
    trailer: "https://vimeo.com/178206612",
    country: "Brasil",
    year: 2016,
    duration: "80 min.",
    rating: "18 anos",
    production_company: "Mira Filmes",
    director: "Paula Sacchetta",
    description: "Na semana da mulher, uma van-estúdio parou em nove locais em são paulo e no rio de janeiro. O objetivo era coletar depoimentos de mulheres vítimas de qualquer tipo de assédio. ao todo, 140 decidiram falar. são relatos de mulheres de 14 a 85 anos, de zonas nobres ou periferias das duas cidades, com diferenças e semelhanças na violência que acontece todos os dias e pode se dar dentro de casa, em um beco escuro ou no meio da rua, à luz do dia. no filme, temos uma amostra significativa, 26 deles. nos depoimentos puros, sem qualquer tipo de interlocução ou entrevista, acompanhamos um desabafo, um momento íntimo ou a oportunidade de falarem daquilo pela primeira vez.",
    genres: Genre.where(id: [4])
  },
  {
    id: "213143",
    title: "O Ornitólogo",
    imdb: "tt4929038",
    trailer: "https://www.youtube.com/watch?v=TI3i6NMvM6U",
    country: "Portugal, França, Brasil",
    year: 2016,
    duration: "118 min.",
    rating: "14 anos",
    production_company: "Vitrine Filmes",
    director: "João Pedro Rodrigues",
    description: "Fernando é um homem de 40 anos que trabalha como um ornitólogo. Ele decide viajar pelo curso de um rio a bordo de um caiaque, mas quando uma correnteza forte derruba sua pequena embarcação, ele inicia uma jornada sem volta.",
    genres: Genre.where(id: [1])
  }
])

Showtime.create([
  { id: 1, time: DateTime.strptime("18/03/2017 15:00", "%d/%m/%Y %H:%M"), movie: Movie.find("213") },
  { id: 2, time: DateTime.strptime("21/03/2017 19:00", "%d/%m/%Y %H:%M"), movie: Movie.find("213") },
  { id: 3, time: DateTime.strptime("25/03/2017 15:00", "%d/%m/%Y %H:%M"), movie: Movie.find("213") },
  { id: 4, time: DateTime.strptime("09/04/2017 15:00", "%d/%m/%Y %H:%M"), movie: Movie.find("213") },
  { id: 5, time: DateTime.strptime("10/04/2017 19:30", "%d/%m/%Y %H:%M"), movie: Movie.find("213") },
  { id: 6, time: DateTime.strptime("17/04/2017 19:30", "%d/%m/%Y %H:%M"), movie: Movie.find("213") },
  { id: 7, time: DateTime.strptime("18/03/2017 18:00", "%d/%m/%Y %H:%M"), movie: Movie.find("241697") },
  { id: 8, time: DateTime.strptime("20/03/2017 20:30", "%d/%m/%Y %H:%M"), movie: Movie.find("241697") },
  { id: 9, time: DateTime.strptime("26/03/2017 18:00", "%d/%m/%Y %H:%M"), movie: Movie.find("241697") },
  { id: 10, time: DateTime.strptime("09/04/2017 18:00", "%d/%m/%Y %H:%M"), movie: Movie.find("241697") },
  { id: 11, time: DateTime.strptime("11/04/2017 20:30", "%d/%m/%Y %H:%M"), movie: Movie.find("241697") },
  { id: 12, time: DateTime.strptime("13/04/2017 20:30", "%d/%m/%Y %H:%M"), movie: Movie.find("241697") },
  { id: 13, time: DateTime.strptime("15/04/2017 18:00", "%d/%m/%Y %H:%M"), movie: Movie.find("241697") },
  { id: 14, time: DateTime.strptime("19/04/2017 17:30", "%d/%m/%Y %H:%M"), movie: Movie.find("241697") },
  { id: 15, time: DateTime.strptime("19/03/2017 16:00", "%d/%m/%Y %H:%M"), movie: Movie.find("237706") },
  { id: 16, time: DateTime.strptime("22/03/2017 17:30", "%d/%m/%Y %H:%M"), movie: Movie.find("237706") },
  { id: 17, time: DateTime.strptime("26/03/2017 16:00", "%d/%m/%Y %H:%M"), movie: Movie.find("237706") },
  { id: 18, time: DateTime.strptime("05/04/2017 17:30", "%d/%m/%Y %H:%M"), movie: Movie.find("237706") },
  { id: 19, time: DateTime.strptime("08/04/2017 16:00", "%d/%m/%Y %H:%M"), movie: Movie.find("237706") },
  { id: 20, time: DateTime.strptime("16/04/2017 16:00", "%d/%m/%Y %H:%M"), movie: Movie.find("237706") },
  { id: 21, time: DateTime.strptime("19/03/2017 18:00", "%d/%m/%Y %H:%M"), movie: Movie.find("239713") },
  { id: 22, time: DateTime.strptime("23/03/2017 20:30", "%d/%m/%Y %H:%M"), movie: Movie.find("239713") },
  { id: 23, time: DateTime.strptime("06/04/2017 20:30", "%d/%m/%Y %H:%M"), movie: Movie.find("239713") },
  { id: 24, time: DateTime.strptime("08/04/2017 18:00", "%d/%m/%Y %H:%M"), movie: Movie.find("239713") },
  { id: 25, time: DateTime.strptime("12/04/2017 17:30", "%d/%m/%Y %H:%M"), movie: Movie.find("239713") },
  { id: 26, time: DateTime.strptime("16/04/2017 18:00", "%d/%m/%Y %H:%M"), movie: Movie.find("239713") },
  { id: 27, time: DateTime.strptime("20/03/2017 18:30", "%d/%m/%Y %H:%M"), movie: Movie.find("249370") },
  { id: 28, time: DateTime.strptime("23/03/2017 18:30", "%d/%m/%Y %H:%M"), movie: Movie.find("249370") },
  { id: 29, time: DateTime.strptime("25/03/2017 18:00", "%d/%m/%Y %H:%M"), movie: Movie.find("249370") },
  { id: 30, time: DateTime.strptime("13/04/2017 18:30", "%d/%m/%Y %H:%M"), movie: Movie.find("249370") },
  { id: 31, time: DateTime.strptime("18/04/2017 20:30", "%d/%m/%Y %H:%M"), movie: Movie.find("249370") },
  { id: 32, time: DateTime.strptime("05/04/2017 19:30", "%d/%m/%Y %H:%M"), movie: Movie.find("213143") },
  { id: 33, time: DateTime.strptime("06/04/2017 18:30", "%d/%m/%Y %H:%M"), movie: Movie.find("213143") },
  { id: 34, time: DateTime.strptime("11/04/2017 18:30", "%d/%m/%Y %H:%M"), movie: Movie.find("213143") },
  { id: 35, time: DateTime.strptime("15/04/2017 16:00", "%d/%m/%Y %H:%M"), movie: Movie.find("213143") },
  { id: 36, time: DateTime.strptime("18/04/2017 18:30", "%d/%m/%Y %H:%M"), movie: Movie.find("213143") }
])
