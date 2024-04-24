import 'package:flutter/material.dart';
import 'package:photo_gallery/Data/cardData.dart';

class SelectedAlbum extends StatelessWidget {
  late int index;
  late List<Map<String, String>> cards;
  SelectedAlbum({super.key, required this.index}){
    cards = CardData.cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: (){
              Navigator.pop(context);
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
        title: Text(cards[index]["AlbumName"]!),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
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
    );
  }
}

