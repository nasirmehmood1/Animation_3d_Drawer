import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_3d_animation_drawer/drawer.dart';
import 'package:flutter_3d_animation_drawer/homewidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final double maxSlideValue = 300;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear));
  }


   void _incrementCounter() {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
    onTap: _incrementCounter,
      child: AnimatedBuilder(
        animation: CurvedAnimation(
            curve: Curves.fastOutSlowIn, parent: _animationController),
        builder: (context, child) {
          return Stack(
            children: [
              Container(color: Colors.white),
              Transform.translate(
                offset: Offset(300 * (_animationController.value - 1), 0),
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(pi/ 2 * (1 - _animationController.value)),
                  alignment: Alignment.centerRight,
                  child:const DrawerWidget(),
                ),
              ),
              Transform.translate(
                offset: Offset(250 * _animationController.value, 0),
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(pi / 2 * _animationController.value),
                  alignment: Alignment.centerLeft,
                  child:const HomeWidget(),
                ),
              ),
            
            ],
          );
          
        },
      ),
    ); 
  }

}

