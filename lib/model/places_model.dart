import 'package:fl_territorios_do_brasil/model/company_model.dart';

class Location {
  final String estado;
  final String regiao;
  final String cidade;
  final String rua;
  final String descricao;
  final double longitude;
  final double latitude;
  const Location({
    required this.estado,
    required this.regiao,
    required this.cidade,
    required this.rua,
    required this.descricao,
    required this.longitude,
    required this.latitude,
  });
}

class PlacesModel {
  final int id;
  final String name;
  final String description;
  final List<String> imageUrl;
  final Location localidade;
  final List<CompanyModel> companyList;
  const PlacesModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.localidade,
    required this.companyList,
  });
}
