class Pokemon {

  final int id;
  final String name;
  final String num;
  final String image;
  final List<String> type;

  Pokemon({
    required this.id, 
    required this.name, 
    required this.num, 
    required this.image, 
    required this.type
  });

  factory Pokemon.fromMap(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'], 
      name: json['name'], 
      num: json['num'], 
      image: json['img'], 
      type: (json['type'] as List<dynamic>).map((e) => e as String).toList()
    );
  }

  String getTypeString() {
    String retorno = "";
    for (var t in type) {
      retorno += "$t ";
    }
    return retorno;
  }

}