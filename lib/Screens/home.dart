import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_gallery/Data/card_data.dart';
import 'package:photo_gallery/Screens/selected_album.dart';
import 'package:photo_gallery/Theme/container_theme.dart';

import '../Theme/text_theme.dart';

late int itemCount;
late List<Map<String, String>> cards;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    cards = CardData.cards;
    itemCount = cards.length;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                SystemNavigator.pop();
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(10.0)),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          title: const Text("Photo Gallery"),
          titleTextStyle: TextThemes.getTextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontFamily: "Poppins",
              letterSpacing: 0.5),
          centerTitle: true,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [],
              iconColor: Colors.white,
              iconSize: 32,
            )
          ],
          backgroundColor: const Color(0xFF2CAB00),
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return gridViewBuilder(orientation);
          },
        ));
  }

  Widget gridViewBuilder(Orientation orientation) {
    return GridView.builder(
        padding: const EdgeInsets.all(15.00),
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait ? 2 : 4),
          mainAxisSpacing: 20,
          crossAxisSpacing: 25,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectedAlbum(index: index)));
            },
            child: Container(
                width: 180,
                height: 180,
                decoration: ContainerTheme.getContainerBoxDecoration(
                    cards: cards, index: index),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12.0),
                  child: Text(
                    cards[index]["AlbumName"]!,
                    style: TextThemes.getTextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
          );
        });
  }
}
