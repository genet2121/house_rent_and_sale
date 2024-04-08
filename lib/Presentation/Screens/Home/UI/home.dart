import 'package:appartment_rent_and_sale/Presentation/Components/shared_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: SharedAppBar(
        screenHeight: sizeH,
        titleText: 'Home',
        showBackButton: false,
        showMenuButton: true,
      ),
    );
  }
}
