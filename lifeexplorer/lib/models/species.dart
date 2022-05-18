class Species {
  final String name;
  final String kingdom;
  final String phylum;
  final String clas;
  final String order;
  final String family;
  final String genus;
  final String species;

  Species(
      {this.name,
      this.kingdom,
      this.phylum,
      this.clas,
      this.order,
      this.family,
      this.genus,
      this.species});

  factory Species.fromJson(dynamic json) {
    return Species(
        name: json['name'] as String,
        kingdom: json['kingdom'] as String,
        phylum: json['phylum'] as String,
        clas: json['class'] as String,
        order: json['order'] as String,
        family: json['family'] as String,
        genus: json['genus'] as String,
        species: json['species'] as String);
  }

  static List<Species> speciesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Species.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Species {name: $name, kingdom: $kingdom, phylum: $phylum, class: $clas order: $order, family: $family, genus: $genus, species: $species}';
  }
}
