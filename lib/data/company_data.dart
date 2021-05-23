import 'package:fl_territorios_do_brasil/model/company_model.dart';
import 'package:fl_territorios_do_brasil/model/places_model.dart';
import 'package:fl_territorios_do_brasil/model/products_model.dart';

const CompanyData = const [
  CompanyModel(
    name: 'Cooperativa Monte Sabores',
    cnpj: '88.620.576/0001-00',
    description: 'pesquisa@fernandaeanthonylimpezame.com.br',
    imageUrl: [
      'https://static.wixstatic.com/media/ee3025_acd1d6caf11349fca296a8f785776185~mv2.jpg/v1/fill/w_980,h_504,al_c,q_85,usm_0.66_1.00_0.01/ee3025_acd1d6caf11349fca296a8f785776185~mv2.webp',
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
          'https://static.wixstatic.com/media/ee3025_3ade54b305a94de6a9eb455e15d2812c~mv2.jpg/v1/fill/w_855,h_440,al_c,q_85/ee3025_3ade54b305a94de6a9eb455e15d2812c~mv2.webp',
          'https://static.wixstatic.com/media/ee3025_3818ddf014a940be937183087c2111a1~mv2.jpg/v1/fill/w_800,h_411,al_c,q_80/ee3025_3818ddf014a940be937183087c2111a1~mv2.webp',
          'https://static.wixstatic.com/media/ee3025_e28dacb65a8542b5971a885affe20e4c~mv2.jpg/v1/fill/w_960,h_494,al_c,q_85/ee3025_e28dacb65a8542b5971a885affe20e4c~mv2.webp',
        ],
      ),
    ],
  ),
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
];
