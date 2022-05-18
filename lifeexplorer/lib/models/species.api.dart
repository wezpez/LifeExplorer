import 'dart:convert';
import 'package:lifeexplorer/models/species.dart';
import 'package:http/http.dart' as http;

class SpeciesApi {
  static Future<Species> getSpecies(String species) async {
    var uri = Uri.https('api.gbif.org', '/v1/species/match', {'name': species});

    final response = await http.get(uri);

    Map data = jsonDecode(response.body);

    try {
      return Species.fromJson(data);
    } catch (_) {
      return Species(
          name: 'unknown',
          kingdom: 'unknown',
          phylum: 'unknown',
          clas: 'unknown',
          order: 'unknown',
          family: 'unknown',
          genus: 'unknown',
          species: 'unknown');
    }
  }
}
