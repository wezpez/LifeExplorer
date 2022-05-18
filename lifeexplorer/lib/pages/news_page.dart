import 'package:flutter/material.dart';

import '../views/widgets/info_card.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        InfoCard(
            title: 'Ecological Studies',
            date: '2022',
            author: 'James Diez',
            thumbnailUrl:
                'https://i1.rgstatic.net/publication/321820124_Scientific_research_on_animal_biodiversity_is_systematically_biased_towards_vertebrates_and_temperate_regions/links/5a332b9aaca2727144b65a8d/largepreview.png'),
        InfoCard(
            title: 'Captive Research and Management',
            date: '2021',
            author: 'William Tanner',
            thumbnailUrl:
                'https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg'),
        InfoCard(
            title: 'Conservation Program',
            date: '2019',
            author: 'Sarah Greene',
            thumbnailUrl:
                'https://www.birmingham.ac.uk/Images/News/Mesozoic-Marine-ecosystem-720.x5427535d.jpg')
      ],
    ));
  }
}
