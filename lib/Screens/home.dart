import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_gallery/Data/card_data.dart';
import 'package:photo_gallery/Screens/selected_album.dart';
import 'package:photo_gallery/Screens/Widgets/image_container.dart';
import 'package:photo_gallery/Screens/Widgets/appbar_back_icon.dart';
import 'package:photo_gallery/Screens/Widgets/pop_menu.dart';
import 'package:photo_gallery/Screens/Widgets/appbar_title.dart';
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
              child: backIcon(),
            ),
          ),
          title: appbarTitle("Photo Gallery"),
          centerTitle: true,
          actions: [
            popMenu(),
          ],
          backgroundColor: const Color(0xFF2CAB00),
        ),
        body: SafeArea(
          child: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              return gridViewBuilder(orientation);
            },
          ),
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
          childAspectRatio: 1,
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
            child: imageContainer(cards, index),
          );
        });
  }
}
