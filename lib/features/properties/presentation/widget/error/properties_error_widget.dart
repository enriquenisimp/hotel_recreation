import 'package:flutter/material.dart';

class PropertiesErrorWidget extends StatelessWidget {
  const PropertiesErrorWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(title),
      ),
    );
  }
}
