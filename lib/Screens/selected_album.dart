import 'package:flutter/material.dart';
import 'package:photo_gallery/Data/card_data.dart';
import 'package:photo_gallery/Theme/container_theme.dart';
import 'package:photo_gallery/Theme/text_theme.dart';

class SelectedAlbum extends StatelessWidget {
  late int index;
  late List<Map<String, String>> cards;

  SelectedAlbum({super.key, required this.index}) : cards = CardData.cards;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
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
            if (orientation == Orientation.portrait) {
              return portraitTree(context, orientation);
            } else {
              return landscapeTree(context, orientation);
            }
          },
        ));
  }

  Widget portraitTree(BuildContext context, Orientation orientation) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 325,
                    margin: const EdgeInsets.all(10.00),
                    decoration: ContainerTheme.getContainerBoxDecoration(
                        cards: cards,
                        index: index,
                        boxShadow: BoxShadow(
                          color: Colors.black.withOpacity(0.50),
                          spreadRadius: 0,
                          blurRadius: 35,
                          offset: const Offset(5, 12),
                          blurStyle: BlurStyle.normal,
                        )))
              ],
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.00, vertical: 10.00),
                  child: Text(
                    cards[index]["AlbumHeader"]!,
                    style: TextThemes.getTextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        letterSpacing: 0.5),
                  ),
                )
              ],
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.00, vertical: 10.00),
                  child: Text(
                    cards[index]["AlbumDescription"]!,
                    textAlign: TextAlign.start,
                    style: TextThemes.getTextStyle(
                        fontFamily: "Poppins", letterSpacing: 0.5),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.00),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 51,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2CAB00),
                          foregroundColor: Colors.white,
                          textStyle: TextThemes.getTextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            letterSpacing: 0.5,
                          ),
                          elevation: 15,
                        ),
                        child: const Text("See More")),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.00),
                  child: Text(
                    "Suggestions",
                    style: TextThemes.getTextStyle(
                        color: const Color(0xFF2CAB00),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        letterSpacing: 0.5),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                bottomContainer(
                    orientation: orientation,
                    context: context,
                    containerLabel: "Dawn",
                    containerImage:
                        "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                bottomContainer(
                    orientation: orientation,
                    context: context,
                    containerLabel: "Leaves",
                    containerImage:
                        "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ],
            )
          ],
        ));
  }

  Widget landscapeTree(BuildContext context, Orientation orientation) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 298,
                margin: const EdgeInsets.only(top: 15.00, left: 20.00),
                decoration: ContainerTheme.getContainerBoxDecoration(
                    cards: cards,
                    index: index,
                    boxShadow: BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: const Offset(5, 12),
                      blurStyle: BlurStyle.normal,
                    )),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 20.00),
                        child: Text(
                          cards[index]["AlbumHeader"]!,
                          style: TextThemes.getTextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 00.00),
                        child: Text(
                          cards[index]["AlbumDescription"]!,
                          textAlign: TextAlign.start,
                          style: TextThemes.getTextStyle(
                              fontFamily: "Poppins", letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.00),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 51,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2CAB00),
                                foregroundColor: Colors.white,
                                textStyle: TextThemes.getTextStyle(
                                    fontSize: 20,
                                    fontFamily: "Poppins",
                                    letterSpacing: 0.5),
                                elevation: 15,
                              ),
                              child: const Text("See More")),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.00, bottom: 20.00),
                        child: Text(
                          "Suggestions",
                          style: TextThemes.getTextStyle(
                              color: const Color(0xFF2CAB00),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        bottomContainer(
                            orientation: orientation,
                            context: context,
                            containerLabel: "Dawn",
                            containerImage:
                                "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        bottomContainer(
                            orientation: orientation,
                            context: context,
                            containerLabel: "Leaves",
                            containerImage:
                                "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget bottomContainer(
      {required Orientation orientation,
      required BuildContext context,
      required String containerLabel,
      required String containerImage}) {
    if (orientation == Orientation.portrait) {
      return Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: 180,
          margin: const EdgeInsets.only(top: 20.0, bottom: 10.00),
          decoration: ContainerTheme.getBottomContainerBoxDecoration(
              containerImage: containerImage,
              boxShadow: BoxShadow(
                color: Colors.black.withOpacity(0.50),
                spreadRadius: 0,
                blurRadius: 30,
                offset: const Offset(0, 15),
                blurStyle: BlurStyle.normal,
              )),
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Text(
              containerLabel,
              style: TextThemes.getTextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ));
    } else {
      return Container(
          width: MediaQuery.of(context).size.width * 0.22,
          height: 180,
          margin: const EdgeInsets.only(bottom: 10.00),
          decoration: ContainerTheme.getBottomContainerBoxDecoration(
              containerImage: containerImage,
              boxShadow: BoxShadow(
                color: Colors.black.withOpacity(0.50),
                spreadRadius: 0,
                blurRadius: 30,
                offset: const Offset(0, 15),
                blurStyle: BlurStyle.normal,
              )),
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Text(
              containerLabel,
              style: TextThemes.getTextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ));
    }
  }
}
