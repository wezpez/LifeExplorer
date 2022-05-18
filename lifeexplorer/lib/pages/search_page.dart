import 'package:flutter/material.dart';
import 'package:lifeexplorer/models/species.api.dart';
import 'package:lifeexplorer/models/species.dart';

import '../views/widgets/info_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Species species;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getSpecies('Giraffa camelopardalis');
  }

  Future<void> getSpecies(String speciesName) async {
    species = await SpeciesApi.getSpecies(speciesName);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          //textInputAction: TextInputAction.search,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'Giraffa camelopardalis'),
          onSubmitted: (text) {
            print('you selected $text');
            getSpecies(text.toLowerCase());
          },
        ),
        SizedBox(height: 10),
        if (species != null)
          DecoratedBox(
            decoration: const BoxDecoration(color: Colors.red),
            child: Text(
              'Kingdom: ' + species.kingdom,
              style: TextStyle(fontSize: 25),
            ),
          ),
        SizedBox(height: 3),
        if (species != null)
          DecoratedBox(
            decoration: const BoxDecoration(color: Colors.orange),
            child: Text(
              'Phylum: ' + species.phylum,
              style: TextStyle(fontSize: 25),
            ),
          ),
        SizedBox(height: 3),
        if (species != null)
          DecoratedBox(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 242, 220, 24)),
            child: Text(
              'Class: ' + species.clas,
              style: TextStyle(fontSize: 25),
            ),
          ),
        SizedBox(height: 3),
        if (species != null)
          DecoratedBox(
            decoration: const BoxDecoration(color: Colors.green),
            child: Text(
              'Order: ' + species.order,
              style: TextStyle(fontSize: 25),
            ),
          ),
        const SizedBox(height: 3),
        if (species != null)
          DecoratedBox(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Text(
              'Family: ' + species.family,
              style: const TextStyle(fontSize: 25),
            ),
          ),
        const SizedBox(height: 3),
        if (species != null)
          DecoratedBox(
            decoration: const BoxDecoration(color: Colors.purple),
            child: Text(
              'Genus: ' + species.genus,
              style: const TextStyle(fontSize: 25),
            ),
          ),
        const SizedBox(height: 3),
        if (species != null)
          DecoratedBox(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 244, 89, 141)),
            child: Text(
              'Species: ' + species.species,
              style: const TextStyle(fontSize: 25),
            ),
          )
      ],
    );
  }
}
