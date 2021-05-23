import 'package:fl_territorios_do_brasil/model/company_model.dart';
import 'package:fl_territorios_do_brasil/model/places_model.dart';
import 'package:fl_territorios_do_brasil/model/products_model.dart';

const PlacesData = const [
  PlacesModel(
    id: 1,
    name: 'Regiao da Caatinga',
    description:
        'é o único bioma[nota 1] exclusivamente brasileiro, o que significa que grande parte do seu patrimônio biológico não pode ser encontrado em nenhum outro lugar do planeta.',
    imageUrl: [
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Lear%27s_Macaw_Anodorhynchus_leari_%28cropped%29.jpg/220px-Lear%27s_Macaw_Anodorhynchus_leari_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Caatinga_Francisco_Santos_piaui.jpg/220px-Caatinga_Francisco_Santos_piaui.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/SERRA_DA_CAPIVARA03.jpg/220px-SERRA_DA_CAPIVARA03.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Parque_Nacional_do_Catimbau_-_Pernambuco_-_Brasil.jpg/280px-Parque_Nacional_do_Catimbau_-_Pernambuco_-_Brasil.jpg',
    ],
    localidade: Location(
      estado: 'Bahia',
      regiao: 'Nordeste',
      cidade: 'manaus',
      rua: 'rua',
      descricao: 'circuito Caatinga',
      longitude: 0.012,
      latitude: 0.878,
    ),
    companyList: [
      CompanyModel(
        name: 'Cooperativa Monte Sabores',
        cnpj: '88.620.576/0001-00',
        description: 'pesquisa@fernandaeanthonylimpezame.com.br',
        imageUrl: [
          'https://d3p2amk7tvag7f.cloudfront.net/pdvs/5d0d2ee84b4290032b1b3734cec438c9ef6666eb.jpg',
          'https://images.unsplash.com/photo-1588692043397-6c48a959b935?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVybmFtYnVjb3xlbnwwfDF8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
        ],
        history: 'history',
        local: Location(
            estado: 'Bahia',
            regiao: 'Nordeste',
            cidade: 'Monte santo',
            rua: 'Praça Professor Salgado',
            descricao: '455',
            longitude: 5,
            latitude: 9),
        products: [
          ProductsModel(
            id: 1,
            name: 'Cerveja de Licuri',
            description:
                'Inspirada no Nordeste Brasileiro a Licuri Belgian Blond Ale, é uma cerveja típica do estilo Abadia Belga, com a leveza e aroma sutis do Licuri. O equilíbrio de aromas do fermento e da fruta resulta numa cerveja potente sem deixar perder a leveza, o que vai fazer você se render à essa Belga Nordestina.',
            history: 'history',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/pdvs/5d0d2ee84b4290032b1b3734cec438c9ef6666eb.jpg',
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Balinha de Licuri',
            description:
                'Produzida por mãos de mulheres agricultoras da caatinga baiana, a partir da coleta de frutos na natureza, seguindo as boas práticas de extrativismo e buscando a sustentabilidade dos ambientes manejados, a balinha de licuri contém amêndoa de coco licuri, banana, açúcar demerara e suco de limão. Não contém glúten. Não contém lactose. Delicie!',
            history:
                'Produzida por mãos de mulheres agricultoras da caatinga baiana, a partir da coleta de',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/91f9c1c941f04a02b961cef993e8fc43268e0df4.JPG'
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Biscoito de Licuri',
            description:
                'O biscoito de Licuri tem origem no trabalho de agricultoras familiares da caatinga baiana, a',
            history:
                'O biscoito de Licuri tem origem no trabalho de agricultoras familiares da caatinga baiana, a',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/5cbfaa457711cfcb1f1a16d7d357f8cb12cf4528.JPG'
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Corpo & Cabelo Licuri (óleo cosmético)',
            description:
                'O óleo cosmético Corpo & Cabelo Licuri é adquirido a partir da prensagem a frio da amêndoa do coco licuri/ouricuri (Syagrus coronata) e leva em sua composição essência de brotos de bambu. Com propriedade emoliente, este óleo promove boa espalhabilidade, absorção e hidratação na pele; apresenta baixa acidez e alta estabilidade. Pode ser usado na preparação de emulsões e formulações cosméticas, como cremes, loções, entre outros, ou usado',
            history:
                'O óleo cosmético Corpo & Cabelo Licuri é adquirido a partir da prensagem a frio da amêndoa do coco licuri/ouricuri (Syagrus coronata) e leva em sua composição essência de brotos de bambu. Com propriedade emoliente, este óleo promove boa espalhabilidade, absorção e hidratação na pele; apresenta baixa acidez e alta estabilidade. Pode ser usado na preparação de emulsões e formulações cosméticas, como cremes, loções, entre outros, ou usado',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/8e123f951bbf316f15d4d727a31dd6b9dd659a1f.JPG'
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Azeite de Licuri 250 ml',
            description:
                'O Azeite de Coco Licuri (Syagrus coronata) da Coopersabor tem origem no trabalho de agricultoras e agricultores familiares da caatinga baiana, a partir da coleta dos frutos na natureza, de acordo com as boas práticas de extrativismo, buscando a sustentabilidade dos ambientes manejados e uma melhor qualidade do produto. Composição: Óleo da amêndoa do coco licuri Método de extração: Prensagem da amêndoa a frio (prensa expeller em aço inoxidável) Dicas de consumo: com sabor e aroma suaves característicos do coco licuri, pode substituir demais óleos e azeites na cozinha, no preparo de saladas, grelhados, refogados e na alimentação cotidiana.',
            history:
                'O Azeite de Coco Licuri (Syagrus coronata) da Coopersabor tem origem no trabalho',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/ae064ae8b4bac1209fd3d183c3890cd9ede589df.JPG'
            ],
          ),
        ],
      ),
    ],
  ),
  PlacesModel(
    id: 1,
    name: 'A Reserva Extrativista do Batoque',
    description:
        'representa a garantia da terra, do mar e das lagoas preservadas para o bem comum. A comunidade tem diversos espaços a serem percorridos pela trilha, como a vila, o Rio do Marisco, a Lagoa da Odete, o manguezal, a vazante e os plantios da agricultura familiar.',
    imageUrl: [
      'https://www.icmbio.gov.br/portal/images/thumbnails/images/stories/imgs-unidades-coservacao/resex_batoque-fill-260x190.JPG',
      'https://www.matraqueando.com.br/wp-content/uploads/2013/03/Rota-do-Cangaco-Piranhas-Alagoas-Raul-e-Mariana.jpg',
      'https://www.matraqueando.com.br/wp-content/uploads/2013/03/Rota-do-Cangaco-Piranhas-Alagoas-Entremontes-Casario.jpg',
      'https://www.matraqueando.com.br/wp-content/uploads/2013/03/Rota-do-Cangaco-Piranhas-Alagoas-Barcos-Entremontes.jpg',
      'https://www.matraqueando.com.br/wp-content/uploads/2013/03/Rota-do-Cangaco-Piranhas-Alagoas-Casa-de-taipa-Mariana.jpg'
    ],
    localidade: Location(
      estado: 'Alagoas',
      regiao: 'Nordeste',
      cidade: 'São Benedito do Sul',
      rua: 'rua',
      descricao: 'A Reserva Extrativista do Batoque',
      longitude: 0.012,
      latitude: 0.878,
    ),
    companyList: [
      CompanyModel(
        name: 'Cooperativa Monte Sabores',
        cnpj: '88.620.576/0001-00',
        description: 'pesquisa@fernandaeanthonylimpezame.com.br',
        imageUrl: [
          'https://d3p2amk7tvag7f.cloudfront.net/pdvs/5d0d2ee84b4290032b1b3734cec438c9ef6666eb.jpg',
          'https://images.unsplash.com/photo-1588692043397-6c48a959b935?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVybmFtYnVjb3xlbnwwfDF8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
        ],
        history: 'history',
        local: Location(
            estado: 'Bahia',
            regiao: 'Nordeste',
            cidade: 'Monte santo',
            rua: 'Praça Professor Salgado',
            descricao: '455',
            longitude: 5,
            latitude: 9),
        products: [
          ProductsModel(
            id: 1,
            name: 'Cerveja de Licuri',
            description:
                'Inspirada no Nordeste Brasileiro a Licuri Belgian Blond Ale, é uma cerveja típica do estilo Abadia Belga, com a leveza e aroma sutis do Licuri. O equilíbrio de aromas do fermento e da fruta resulta numa cerveja potente sem deixar perder a leveza, o que vai fazer você se render à essa Belga Nordestina.',
            history: 'history',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/pdvs/5d0d2ee84b4290032b1b3734cec438c9ef6666eb.jpg',
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Balinha de Licuri',
            description:
                'Produzida por mãos de mulheres agricultoras da caatinga baiana, a partir da coleta de frutos na natureza, seguindo as boas práticas de extrativismo e buscando a sustentabilidade dos ambientes manejados, a balinha de licuri contém amêndoa de coco licuri, banana, açúcar demerara e suco de limão. Não contém glúten. Não contém lactose. Delicie!',
            history:
                'Produzida por mãos de mulheres agricultoras da caatinga baiana, a partir da coleta de',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/91f9c1c941f04a02b961cef993e8fc43268e0df4.JPG'
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Biscoito de Licuri',
            description:
                'O biscoito de Licuri tem origem no trabalho de agricultoras familiares da caatinga baiana, a',
            history:
                'O biscoito de Licuri tem origem no trabalho de agricultoras familiares da caatinga baiana, a',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/5cbfaa457711cfcb1f1a16d7d357f8cb12cf4528.JPG'
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Corpo & Cabelo Licuri (óleo cosmético)',
            description:
                'O óleo cosmético Corpo & Cabelo Licuri é adquirido a partir da prensagem a frio da amêndoa do coco licuri/ouricuri (Syagrus coronata) e leva em sua composição essência de brotos de bambu. Com propriedade emoliente, este óleo promove boa espalhabilidade, absorção e hidratação na pele; apresenta baixa acidez e alta estabilidade. Pode ser usado na preparação de emulsões e formulações cosméticas, como cremes, loções, entre outros, ou usado',
            history:
                'O óleo cosmético Corpo & Cabelo Licuri é adquirido a partir da prensagem a frio da amêndoa do coco licuri/ouricuri (Syagrus coronata) e leva em sua composição essência de brotos de bambu. Com propriedade emoliente, este óleo promove boa espalhabilidade, absorção e hidratação na pele; apresenta baixa acidez e alta estabilidade. Pode ser usado na preparação de emulsões e formulações cosméticas, como cremes, loções, entre outros, ou usado',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/8e123f951bbf316f15d4d727a31dd6b9dd659a1f.JPG'
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Azeite de Licuri 250 ml',
            description:
                'O Azeite de Coco Licuri (Syagrus coronata) da Coopersabor tem origem no trabalho de agricultoras e agricultores familiares da caatinga baiana, a partir da coleta dos frutos na natureza, de acordo com as boas práticas de extrativismo, buscando a sustentabilidade dos ambientes manejados e uma melhor qualidade do produto. Composição: Óleo da amêndoa do coco licuri Método de extração: Prensagem da amêndoa a frio (prensa expeller em aço inoxidável) Dicas de consumo: com sabor e aroma suaves característicos do coco licuri, pode substituir demais óleos e azeites na cozinha, no preparo de saladas, grelhados, refogados e na alimentação cotidiana.',
            history:
                'O Azeite de Coco Licuri (Syagrus coronata) da Coopersabor tem origem no trabalho',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/ae064ae8b4bac1209fd3d183c3890cd9ede589df.JPG'
            ],
          ),
        ],
      ),
    ],
  ),
  PlacesModel(
    id: 1,
    name: 'Rota do Cangaço',
    description:
        'o passeio que leva você à história do sertão nordestino | Piranhas-AL.',
    imageUrl: [
      'https://www.matraqueando.com.br/wp-content/uploads/2013/03/Rota-do-Cangaco-Piranhas-Alagoas-Caatinga.jpg',
      'https://www.matraqueando.com.br/wp-content/uploads/2013/03/Rota-do-Cangaco-Piranhas-Alagoas-Raul-e-Mariana.jpg',
      'https://www.matraqueando.com.br/wp-content/uploads/2013/03/Rota-do-Cangaco-Piranhas-Alagoas-Entremontes-Casario.jpg',
      'https://www.matraqueando.com.br/wp-content/uploads/2013/03/Rota-do-Cangaco-Piranhas-Alagoas-Barcos-Entremontes.jpg',
      'https://www.matraqueando.com.br/wp-content/uploads/2013/03/Rota-do-Cangaco-Piranhas-Alagoas-Casa-de-taipa-Mariana.jpg'
    ],
    localidade: Location(
      estado: 'Alagoas',
      regiao: 'Nordeste',
      cidade: 'Piranhas',
      rua: 'rua',
      descricao: 'Rota do Cangaço',
      longitude: 0.012,
      latitude: 0.878,
    ),
    companyList: [
      CompanyModel(
        name: 'Cooperativa Monte Sabores',
        cnpj: '88.620.576/0001-00',
        description: 'pesquisa@fernandaeanthonylimpezame.com.br',
        imageUrl: [
          'https://d3p2amk7tvag7f.cloudfront.net/pdvs/5d0d2ee84b4290032b1b3734cec438c9ef6666eb.jpg',
          'https://images.unsplash.com/photo-1588692043397-6c48a959b935?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVybmFtYnVjb3xlbnwwfDF8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
        ],
        history: 'history',
        local: Location(
            estado: 'Bahia',
            regiao: 'Nordeste',
            cidade: 'Monte santo',
            rua: 'Praça Professor Salgado',
            descricao: '455',
            longitude: 5,
            latitude: 9),
        products: [
          ProductsModel(
            id: 1,
            name: 'Cerveja de Licuri',
            description:
                'Inspirada no Nordeste Brasileiro a Licuri Belgian Blond Ale, é uma cerveja típica do estilo Abadia Belga, com a leveza e aroma sutis do Licuri. O equilíbrio de aromas do fermento e da fruta resulta numa cerveja potente sem deixar perder a leveza, o que vai fazer você se render à essa Belga Nordestina.',
            history: 'history',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/pdvs/5d0d2ee84b4290032b1b3734cec438c9ef6666eb.jpg',
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Balinha de Licuri',
            description:
                'Produzida por mãos de mulheres agricultoras da caatinga baiana, a partir da coleta de frutos na natureza, seguindo as boas práticas de extrativismo e buscando a sustentabilidade dos ambientes manejados, a balinha de licuri contém amêndoa de coco licuri, banana, açúcar demerara e suco de limão. Não contém glúten. Não contém lactose. Delicie!',
            history:
                'Produzida por mãos de mulheres agricultoras da caatinga baiana, a partir da coleta de',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/91f9c1c941f04a02b961cef993e8fc43268e0df4.JPG'
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Biscoito de Licuri',
            description:
                'O biscoito de Licuri tem origem no trabalho de agricultoras familiares da caatinga baiana, a',
            history:
                'O biscoito de Licuri tem origem no trabalho de agricultoras familiares da caatinga baiana, a',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/5cbfaa457711cfcb1f1a16d7d357f8cb12cf4528.JPG'
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Corpo & Cabelo Licuri (óleo cosmético)',
            description:
                'O óleo cosmético Corpo & Cabelo Licuri é adquirido a partir da prensagem a frio da amêndoa do coco licuri/ouricuri (Syagrus coronata) e leva em sua composição essência de brotos de bambu. Com propriedade emoliente, este óleo promove boa espalhabilidade, absorção e hidratação na pele; apresenta baixa acidez e alta estabilidade. Pode ser usado na preparação de emulsões e formulações cosméticas, como cremes, loções, entre outros, ou usado',
            history:
                'O óleo cosmético Corpo & Cabelo Licuri é adquirido a partir da prensagem a frio da amêndoa do coco licuri/ouricuri (Syagrus coronata) e leva em sua composição essência de brotos de bambu. Com propriedade emoliente, este óleo promove boa espalhabilidade, absorção e hidratação na pele; apresenta baixa acidez e alta estabilidade. Pode ser usado na preparação de emulsões e formulações cosméticas, como cremes, loções, entre outros, ou usado',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/8e123f951bbf316f15d4d727a31dd6b9dd659a1f.JPG'
            ],
          ),
          ProductsModel(
            id: 1,
            name: 'Azeite de Licuri 250 ml',
            description:
                'O Azeite de Coco Licuri (Syagrus coronata) da Coopersabor tem origem no trabalho de agricultoras e agricultores familiares da caatinga baiana, a partir da coleta dos frutos na natureza, de acordo com as boas práticas de extrativismo, buscando a sustentabilidade dos ambientes manejados e uma melhor qualidade do produto. Composição: Óleo da amêndoa do coco licuri Método de extração: Prensagem da amêndoa a frio (prensa expeller em aço inoxidável) Dicas de consumo: com sabor e aroma suaves característicos do coco licuri, pode substituir demais óleos e azeites na cozinha, no preparo de saladas, grelhados, refogados e na alimentação cotidiana.',
            history:
                'O Azeite de Coco Licuri (Syagrus coronata) da Coopersabor tem origem no trabalho',
            disponible: true,
            imageUrl: [
              'https://d3p2amk7tvag7f.cloudfront.net/products/ae064ae8b4bac1209fd3d183c3890cd9ede589df.JPG'
            ],
          ),
        ],
      ),
    ],
  ),
];
