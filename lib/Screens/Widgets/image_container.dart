import 'package:flutter/material.dart';
import '../../Theme/container_theme.dart';
import '../../Theme/text_theme.dart';

Widget imageContainer(List<Map<String, String>> cards, int index,
        {bool fromHome = true,
        double height = 180,
        double width = 180,
        EdgeInsets? margin,
        BoxShadow? boxShadow}) =>
    Container(
      width: width,
      height: height,
      margin: (margin != null) ? margin : const EdgeInsets.all(0),
      decoration: (boxShadow != null)
          ? ContainerTheme.getContainerBoxDecoration(
              cards: cards,
              index: index,
              boxShadow: boxShadow,
            )
          : ContainerTheme.getContainerBoxDecoration(
              cards: cards, index: index),
      alignment: Alignment.bottomLeft,
      child: (fromHome)
          ? Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
              child: Text(
                cards[index]["AlbumName"]!,
                style: TextThemes.getTextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          : null,
    );
