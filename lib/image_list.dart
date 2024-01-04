// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class image_list extends StatefulWidget {
  const image_list({super.key});

  @override
  State<image_list> createState() => _image_listState();
}

class _image_listState extends State<image_list> {
  int _imageIndex = 0;
  final List<String> _images = [
    'images/Nilou.full.3723537.jpg',
    'images/Navia.full.4030139.jpg',
    'images/Navia.full.4011277.jpg'
  ];

  void _changeImage() {
    setState(() {
      _imageIndex = (_imageIndex + 1) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Change App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              _images[_imageIndex],
              height: 500,
              width: 1080,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeImage,
              child: const Text('Change Image'),
            ),
          ],
        ),
      ),
    );
  }
}
