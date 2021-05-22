import 'package:fl_territorios_do_brasil/model/places_model.dart';
import 'package:fl_territorios_do_brasil/model/products_model.dart';

class CompanyModel {
  final String name;
  final String cnpj;
  final String description;
  final List<ProductsModel> products;
  final List<String> imageUrl;
  final String history;
  final Location local;
  const CompanyModel({
    required this.name,
    required this.cnpj,
    required this.description,
    required this.products,
    required this.imageUrl,
    required this.history,
    required this.local,
  });
}
