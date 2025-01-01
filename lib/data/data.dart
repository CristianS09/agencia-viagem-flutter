//Classe com os dados
class Data {
  //Método estático para retornar a lista de Map com os destinos
  static List<Map<String, dynamic>> get getList {
    return [
      {
        'id':1,
        //Titulo
        'title': 'Rio de janeiro',
        //Preço
        'price': '400.00BRL',
        //Url da imagem na Web
        'url':
            'https://a.cdn-hotels.com/gdcs/production143/d357/42fb6908-dcd5-4edb-9f8c-76208494af80.jpg',
        //Avaliação
        'reviews': 4.1,
        //Descrição
        'description':
            'Rio de Janeiro é a segunda principal cidade brasileira. A capital do estado do Rio de Janeiro está localizada no litoral da região Sudeste do Brasil.',
      },
      {
        'id':2,
        'title': 'Nova Iorque',
        'price': '4500.00BRL',
        'url':
            'https://media.architecturaldigest.com/photos/5cdadfa704c41e74349a8438/master/pass/GettyImages-931933966.jpg',
        'reviews': 4.5,
        'description':
            'Nova York é uma das cidades mais visitadas pelos brasileiros no exterior e certamente uma das mais espetaculares do mundo.'
      },
      {
        'id':3,
        'title': 'Moscou',
        'price': '5000.00BRL',
        'url':
            'https://th.bing.com/th/id/R.33c99582a9c412091b564bb7d45f87ab?rik=P8IZMvHTJY7Gzg&pid=ImgRaw&r=0',
        'reviews': 4.2,
        'description':
            'Capital do maior país do mundo, a Rússia, Moscou guarda tesouros que você não pode deixar de conferir em sua viagem.'
      },
      {
        'id':4,
        'title': 'São Paulo',
        'price': '800.00BRL',
        'url':
            'https://th.bing.com/th/id/R.d47da4ce41eb202cec64ea07dde2bec1?rik=NqSgf9qrRZqnpQ&pid=ImgRaw&r=0',
        'reviews': 4.5,
        'description':
            'São Paulo é um município brasileiro, capital do estado de mesmo nome e cidade mais populosa do Brasil. Listada pela Globalization and World Cities Research Network (GaWC) como uma cidade global alfa, exerce significativa influência internacional no comércio, finanças, artes e entretenimento.'
      },
      {
        'id':5,
        'title': 'Los Angeles',
        'price': '10.000BRL',
        'url':
            'https://a.travel-assets.com/findyours-php/viewfinder/images/res70/475000/475457-Los-Angeles.jpg',
        'reviews': 5.0,
        'description':
            'Los Angeles, conhecida como a “Cidade dos Anjos” ou a terra do cinema americano, é uma cidade cosmopolita, cheia de glamour e agito. O lugar é perfeito para quem busca se divertir nos parques, fazer compras, curtir as belíssimas praias do litoral da Califórnia e, claro, mergulhar um pouco no mundo das celebridades americanas.',
      },
      {
        'id':6,
        'title': 'Paris',
        'price': '9.000BRL',
        'url': 'https://s1.1zoom.me/big3/488/France_Paris_Eiffel_443254.jpg',
        'reviews': 5.1,
        'description':
            'Paris é a capital mais populosa da França, com uma população estimada em 2020 de 2,1 milhões de habitantes em uma área de 105 km². Desde o século XVII, Paris é um dos principais centros de finanças e diplomacia da Europa, além de muito famosa pelos comércios, moda, ciência e artes.',
      },
      {
        'id':7,
        'title': 'Roma',
        'price': '12.000BRL',
        'url':
            'https://www.nationalgeographic.com.es/medio/2019/01/18/coliseo-roma_2e567462_1500x1081.jpg',
        'reviews': 4.5,
        'description':
            'Roma (ou Roma Capital) é uma comuna localizada na região do Lácio, na Itália, e que desempenha a função de capital nacional. A cidade foi fundada no ano de 753 a.C., e desde então figura entre os principais centros históricos e culturais não somente do continente europeu como também do mundo.',
      },
    ];
  }
}
