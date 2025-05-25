import 'package:flutter/material.dart';

class FacilitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double titleFontSize = (screenWidth * 0.05).clamp(18, 24);
    double contentFontSize = (screenWidth * 0.045).clamp(14, 20);

    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Facilities & Services'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            

            Text(
              'Campus Facilities:',
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),

            _buildBulletPoint('Well-equipped classrooms and lecture halls.'),
            _buildBulletPoint('Modern computer labs with high-speed internet.'),
            _buildBulletPoint('Library with a vast collection of books and journals.'),
            
            _buildBulletPoint('Cafeteria offering diverse food options.'),
            _buildBulletPoint('Prayer rooms and mosque facilities.'),
            
           

            SizedBox(height: 24),

            Text(
              'Services:',
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),

            _buildBulletPoint('Wi-Fi available across the campus.'),
           
            _buildBulletPoint('Transportation services and shuttle buses.'),
            
            _buildBulletPoint('Extracurricular clubs'),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: TextStyle(fontSize: 20)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
