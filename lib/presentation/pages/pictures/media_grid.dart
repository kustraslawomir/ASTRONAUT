import 'package:astronaut/data/datasources/remote/model/nasa_picture/remote_nasa_picture.dart';
import 'package:astronaut/presentation/pages/pictures/picture_item.dart';
import 'package:astronaut/presentation/utils/media_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaGrid extends StatelessWidget {
  final List<RemoteNasaPicture> pictures;

  MediaGrid({required this.pictures});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 2,
        ),
        itemCount: pictures.length,
        itemBuilder: (context, index) {
          final picture = pictures[index];
          if (picture.mediaType == MediaType.IMAGE) {
            return new GestureDetector(
                onTap: () {
                  //todo support on media click
                },
                child: PictureItem(picture: picture));
          }

          //todo support video media type
          if (picture.mediaType == MediaType.VIDEO) {
            Text('VIDEO');
          }

          return Center(
              child: Text('unsupported media type: ${picture.mediaType}'));
        });
  }
}
