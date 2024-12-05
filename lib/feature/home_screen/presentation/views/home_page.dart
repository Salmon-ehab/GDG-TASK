import 'package:flutter/material.dart';
import 'package:task/feature/home_screen/presentation/views/widgets/bottom_nav_bar_widget.dart';
import 'package:task/feature/home_screen/presentation/views/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BottomNavBarWidget());
  }
}
