import 'package:flutter/material.dart';

class ContainerTheme {
  static BoxDecoration getContainerBoxDecoration(
      {required List<Map<String, String>> cards,
      required int index,
      BoxShadow? boxShadow}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      image: DecorationImage(
        image: NetworkImage(cards[index]["AlbumPicture"]!),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.darken),
      ),
      boxShadow: [boxShadow ?? getDefaultBoxShadow()],
    );
  }

  static BoxDecoration getBottomContainerBoxDecoration(
      {required String containerImage, BoxShadow? boxShadow}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      image: DecorationImage(
        image: NetworkImage(containerImage),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.darken),
      ),
      boxShadow: [boxShadow ?? getDefaultBoxShadow()],
    );
  }

  static BoxShadow getDefaultBoxShadow() => (BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 0,
        blurRadius: 30,
        offset: const Offset(0, 15),
        blurStyle: BlurStyle.normal,
      ));
}
