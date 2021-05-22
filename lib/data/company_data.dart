import 'package:fl_territorios_do_brasil/data/products_data.dart';
import 'package:fl_territorios_do_brasil/model/company_model.dart';
import 'package:fl_territorios_do_brasil/model/places_model.dart';
import 'package:fl_territorios_do_brasil/model/products_model.dart';

const CompanyData = const [
  CompanyModel(
    name: 'Cooperativa aurora',
    cnpj: '88.620.576/0001-00',
    description: 'pesquisa@fernandaeanthonylimpezame.com.br',
    products: [
      ProductsModel(
        id: 1,
        name: 'name',
        description: 'description',
        price: 32.55,
        history: 'history',
        disponible: true,
        imageUrl: [],
      ),
      ProductsModel(
        id: 1,
        name: 'name',
        description: 'description',
        price: 32.55,
        history: 'history',
        disponible: true,
        imageUrl: [],
      ),
      ProductsModel(
        id: 1,
        name: 'name',
        description: 'description',
        price: 32.55,
        history: 'history',
        disponible: true,
        imageUrl: [],
      ),
    ],
    imageUrl: [
      'https://images.unsplash.com/photo-1531973576160-7125cd663d86?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGNvbXBhbnl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1588692043397-6c48a959b935?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVybmFtYnVjb3xlbnwwfDF8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
    ],
    history: 'history',
    local: Location(
        estado: 'estado',
        regiao: 'regiao',
        cidade: 'cidade',
        rua: 'rua',
        descricao: 'descricao',
        longitude: 5,
        latitude: 9),
  ),
];
