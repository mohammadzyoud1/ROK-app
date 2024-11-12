import 'package:flutter/material.dart';

class image_view extends StatelessWidget {
  String image_path;
  image_view({required this.image_path});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Exit or go back to the previous screen
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: InteractiveViewer(
          panEnabled: true,
          minScale: 1,
          maxScale: 4,
          child: Image.asset(
            image_path,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
