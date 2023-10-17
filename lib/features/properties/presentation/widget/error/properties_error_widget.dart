import 'package:flutter/material.dart';

///Default widget to show a gentle error to the user
class PropertiesErrorWidget extends StatelessWidget {

  const PropertiesErrorWidget({
    required this.title,
    super.key,
  });

  ///Message that the user will read to understand the error/warning
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
