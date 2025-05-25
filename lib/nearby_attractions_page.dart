import 'package:flutter/material.dart';

class NearbyAttractionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildPage(
      context,
      'Nearby Attractions',
      '- Tea Garden, Sylhet (40 min)\n'
      '- Shahjalal Mazar Sharif (35 min)\n'
      '- Ali Amjad’s Clock  (30 min)',
    );
  }
}

Widget _buildPage(BuildContext context, String title, String content) {
  return Scaffold(
    appBar: AppBar(
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(title),
      ),
    ),
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        content,
        style: TextStyle(fontSize: 16, height: 1.4),
      ),
    ),
  );
}
