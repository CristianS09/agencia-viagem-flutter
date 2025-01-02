//Classe com os dados
class Data {
  //Método estático para retornar a lista de Map com os destinos
  static List<Map<String, dynamic>> get getList {
    return [
      {
        //Id
        'id': 1,
        //Titulo
        'title': 'Rio de janeiro',
        //Preço
        'price': '400.00BRL',
        //Url da imagem salva na pasta assets
        'url': 'assets/images/rio.jpg',
        //Avaliação
        'reviews': 4.0,
        //Descrição
        'description':
            'Rio de Janeiro é a segunda principal cidade brasileira. A capital do estado do Rio de Janeiro está localizada no litoral da região Sudeste do Brasil.',
        'country': 'Brasil'
      },
      {
        'id': 2,
        'title': 'Nova Iorque',
        'price': '4500.00BRL',
        'url': 'assets/images/nova-iorque.jpg',
        'reviews': 4.5,
        'description':
            'Nova York é uma das cidades mais visitadas pelos brasileiros no exterior e certamente uma das mais espetaculares do mundo.',
        'country': 'Estados Unidos'
      },
      {
        'id': 3,
        'title': 'Moscou',
        'price': '5000.00BRL',
        'url': 'assets/images/moscou.jpg',
        'reviews': 4.2,
        'description':
            'Capital do maior país do mundo, a Rússia, Moscou guarda tesouros que você não pode deixar de conferir em sua viagem.',
        'country': 'Rússia'
      },
      {
        'id': 4,
        'title': 'São Paulo',
        'price': '800.00BRL',
        'url': 'assets/images/sao-paulo.jpg',
        'reviews': 4.2,
        'description':
            'São Paulo é um município brasileiro, capital do estado de mesmo nome e cidade mais populosa do Brasil. Listada pela Globalization and World Cities Research Network (GaWC) como uma cidade global alfa, exerce significativa influência internacional no comércio, finanças, artes e entretenimento.',
        'country': 'Brasil'
      },
      {
        'id': 5,
        'title': 'Los Angeles',
        'price': '10.000BRL',
        'url': 'assets/images/los-angeles.jpg',
        'reviews': 5.0,
        'description':
            'Los Angeles, conhecida como a “Cidade dos Anjos” ou a terra do cinema americano, é uma cidade cosmopolita, cheia de glamour e agito. O lugar é perfeito para quem busca se divertir nos parques, fazer compras, curtir as belíssimas praias do litoral da Califórnia e, claro, mergulhar um pouco no mundo das celebridades americanas.',
        'country': 'Estados Unidos'
      },
      {
        'id': 6,
        'title': 'Paris',
        'price': '9.000BRL',
        'url': 'assets/images/paris.jpg',
        'reviews': 5.1,
        'description':
            'Paris é a capital mais populosa da França, com uma população estimada em 2020 de 2,1 milhões de habitantes em uma área de 105 km². Desde o século XVII, Paris é um dos principais centros de finanças e diplomacia da Europa, além de muito famosa pelos comércios, moda, ciência e artes.',
        'country': 'França'
      },
      {
        'id': 7,
        'title': 'Roma',
        'price': '12.000BRL',
        'url': 'assets/images/roma.jpg',
        'reviews': 4.5,
        'description':
            'Roma (ou Roma Capital) é uma comuna localizada na região do Lácio, na Itália, e que desempenha a função de capital nacional. A cidade foi fundada no ano de 753 a.C., e desde então figura entre os principais centros históricos e culturais não somente do continente europeu como também do mundo.',
        'country': 'Itália'
      },
      {
        'id': 8,
        'title': 'Toronto',
        'price': '7.000BRL',
        'url': 'assets/images/toronto.jpg',
        'reviews': 5.0,
        'description':
            'Toronto é a maior cidade do Canadá e capital da província de Ontário. É frequentemente destacada como um dos centros urbanos mais multiculturais do mundo, conhecida por sua diversidade, atrações turísticas e uma rica cultura.',
        'country': 'Canadá'
      },
      {
        'id': 9,
        'title': 'Berna',
        'price': '6.000BRL',
        'url': 'assets/images/berna.jpg',
        'reviews': 4.5,
        'description':
            'Berna, também conhecida como a cidade dos ursos, é a capital da Suíça. Com uma arquitetura medieval bem preservada e uma mistura de cultura moderna, Berna é uma cidade fascinante e cheia de personalidade.',
        'country': 'Suiça'
      },
      {
        'id': 10,
        'title': 'Tóquio',
        'price': '12.000BRL',
        'url': 'assets/images/toquio.jpg',
        'reviews': 5.1,
        'description':
            'Tóquio é a capital do Japão e a maior metrópole do mundo. É o centro político, econômico, educacional e cultural do Japão.',
        'country': 'Japão'
      },
    ];
  }
}
