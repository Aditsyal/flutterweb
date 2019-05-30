import 'package:flutter_web/material.dart';
import 'package:flutterweb/model/Item.dart';

import 'ItemList.dart';

class HomeScreen extends StatelessWidget {
  List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: _listView()
    );
  }

  Widget _listView() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            children: itemList
                .map(
                  (Item) => ItemList(item: Item),
                )
                .toList(),
          )),
        ],
      ),
    );
  }

  List<Item> _itemList() {
    return [
      Item(
        id: 0,
        name: 'Avengers: Infinity War',
        category: 'Action, Adventure, Fantasy',
        desc: 'The Avengers and their allies must be willing '
            'to sacrifice all in an attempt to defeat '
            'the powerful Thanos before his blitz of '
            'devastation and ruin puts an end to the universe.'
            '\nAs the Avengers and their allies have continued '
            'to protect the world from threats too large for '
            'any one hero to handle, a danger has emerged '
            'from the cosmic shadows: Thanos.',
        rating: 8.7,
        directors: 'Directors: Anthony Russo, Joe Russo',
        releaseDate: '27 April 2018',
        releaseDateDesc: 'USA (2018), 2h 29min',
        runtime: '2h 29min',
        bannerUrl: 'images/avengers_infinitywar1.jpg',
        imageUrl: 'images/ic_preview_1.png',
        trailerImg1: 'images/ic_thumb_11.png',
        trailerImg2: 'images/ic_thumb_12.png',
        trailerImg3: 'images/ic_thumb_13.png',
      ),
      Item(
        id: 1,
        name: 'Transformers: The Last Knight',
        category: 'Action, Adventure, Sci-Fi',
        desc: 'Autobots and Decepticons are at war, with humans '
            'on the sidelines. Optimus Prime is gone. The key to '
            'saving our future lies buried in the secrets of the past, '
            'in the hidden history of Transformers on Earth.',
        rating: 5.2,
        directors: 'Directors: Michael Bay',
        releaseDate: '21 June 2017',
        releaseDateDesc: 'USA (2017), 2h 34min',
        runtime: '2h 34min',
        bannerUrl: 'images/transformers_lastknight1.jpg',
        imageUrl: 'images/ic_preview_2.png',
        trailerImg1: 'images/ic_thumb_21.png',
        trailerImg2: 'images/ic_thumb_21.png',
        trailerImg3: 'images/ic_thumb_21.png',
      ),
      Item(
        id: 2,
        name: 'Pacific Rim: Uprising',
        category: 'Action, Adventure, Sci-Fi',
        desc: 'Jake Pentecost, son of Stacker Pentecost, reunites with '
            'Mako Mori to lead a new generation of Jaeger pilots, including '
            'rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.',
        rating: 5.7,
        directors: 'Directors: Steven S. DeKnight',
        releaseDate: '23 March 2018',
        releaseDateDesc: 'USA (2018), 1h 51min',
        runtime: '1h 51min',
        bannerUrl: 'images/pacificrim_uprising.jpeg',
        imageUrl: 'images/ic_preview_3.png',
        trailerImg1: 'images/ic_thumb_31.png',
        trailerImg2: 'images/ic_thumb_31.png',
        trailerImg3: 'images/ic_thumb_31.png',
      ),
      Item(
        id: 3,
        name: 'Thor: Ragnarok',
        category: 'Action, Adventure, Comedy',
        desc: 'Thor is imprisoned on the planet Sakaar, and must '
            'race against time to return to Asgard and stop Ragnarök, '
            'the destruction of his world, at the hands of the powerful '
            'and ruthless villain Hela.',
        rating: 7.9,
        directors: 'Directors: Taika Waititi',
        releaseDate: '3 November 2017',
        releaseDateDesc: 'USA (2017), 2h 10min',
        runtime: '2h 10min',
        bannerUrl: 'images/thor_ragnarok1.jpg',
        imageUrl: 'images/ic_preview_4.png',
        trailerImg1: 'images/ic_thumb_41.png',
        trailerImg2: 'images/ic_thumb_41.png',
        trailerImg3: 'images/ic_thumb_41.png',
      ),
    ];
  }
}