import 'package:bildergalerie/modules/detailedView/detailed_view.dart';
import 'package:bildergalerie/shared/data/gallery_data.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 7,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      padding: EdgeInsets.all(10.0),
      itemBuilder: (context, index) {
        return Stack(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailedView(galleryIndex: index),
                    ),
                  );
                },
                child: Image.asset(
                  galleryData[index].imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: Container(
                color: Colors.white,
                width: 10000,
                child: Text(galleryData[index].imageTitle),
              ),
            ),
          ],
        );
      },
    );
  }
}
