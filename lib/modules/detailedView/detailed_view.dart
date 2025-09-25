import 'package:bildergalerie/shared/data/gallery_data.dart';
import 'package:flutter/material.dart';

class DetailedView extends StatefulWidget {
  const DetailedView({super.key, required this.galleryIndex});
  final int galleryIndex;
  @override
  State<DetailedView> createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(galleryData[widget.galleryIndex].imageTitle),
        backgroundColor: Colors.teal,
        toolbarHeight: 100,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset(galleryData[widget.galleryIndex].imagePath),
            Column(
              children: [
                Text(
                  galleryData[widget.galleryIndex].imageDate,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                Text(galleryData[widget.galleryIndex].imageDescription),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
