import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});
    // final Function toggle;


  @override
  State<StatefulWidget> createState() {
    return _HomeWidget();
  }
}

class _HomeWidget extends State<HomeWidget>{
 
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon:const Icon(Icons.menu),
        ),
        title:const Text('3D Drawer',style: TextStyle(
          fontSize: 30,color: Colors.blue
        ),),
        centerTitle: true,
      ),
      body: Container(
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/backgroundspace.jpg'),fit: BoxFit.fitWidth)
        ),
      ),
    );
  }
}
