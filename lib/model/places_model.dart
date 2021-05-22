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
  final String imageUrl;
  final Location localidade;
  const PlacesModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.localidade,
  });
}
