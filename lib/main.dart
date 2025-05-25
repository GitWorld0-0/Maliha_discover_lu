import 'package:flutter/material.dart';


import 'introduction_page.dart';
import 'transport_page.dart';
import 'campus_map_page.dart';
import 'facilities_page.dart';
import 'travel_tips_page.dart';
import 'nearby_attractions_page.dart';
import 'about_page.dart';

void main() => runApp(DiscoverLUApp());

class DiscoverLUApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discover Leading University: A Visitor’s Guide',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<_MenuItem> menuItems = [
    _MenuItem('Introduction', Icons.info, IntroductionPage()),
    _MenuItem('Transport Options', Icons.directions_bus, TransportPage()),
    _MenuItem('Campus Map', Icons.map, CampusMapPage()),
    _MenuItem('Facilities & Services', Icons.room_service, FacilitiesPage()),
    _MenuItem('Travel Tips', Icons.warning, TravelTipsPage()),
    _MenuItem('Nearby Attractions', Icons.place, NearbyAttractionsPage()),
    _MenuItem('About App', Icons.app_settings_alt, AboutPage()),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Responsive font size for button text, clamped between 14 and 18
    double buttonFontSize = (screenWidth * 0.05).clamp(14, 18);

    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Discover Leading University: A Visitor’s Guide'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Image.asset('assets/logo.png', fit: BoxFit.contain),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: menuItems.length,
                separatorBuilder: (_, __) => SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final item = menuItems[index];
                  return ElevatedButton.icon(
                    icon: Icon(item.icon),
                    label: Text(
                      item.title,
                      style: TextStyle(fontSize: buttonFontSize),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => item.page),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuItem {
  final String title;
  final IconData icon;
  final Widget page;
  _MenuItem(this.title, this.icon, this.page);
}
