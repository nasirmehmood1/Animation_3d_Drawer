import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});
  // final Function? toggel;

  @override
  State<StatefulWidget> createState() {
    return _DrawerWidget();
  }
}

class _DrawerWidget extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
      width: 300,
        color: Colors.redAccent,
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            IconButton(icon:const Icon(Icons.menu), onPressed: (){}),
            const FlutterLogo(size: 40),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.person, color: Colors.white, size: 40),
                SizedBox(width: 10),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.settings, color: Colors.white, size: 40),
                SizedBox(width: 10),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.contact_mail, color: Colors.white, size: 40),
                SizedBox(width: 10),
                Text(
                  'Contact us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        )
        ),
      );
    
  }
}
