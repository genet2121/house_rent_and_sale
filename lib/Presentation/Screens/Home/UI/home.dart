import 'package:appartment_rent_and_sale/Presentation/Components/shared_appbar.dart';
import 'package:appartment_rent_and_sale/Presentation/Screens/Home/widget/sidebar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedMenuItem = 'Home'; // Initial selected menu item

  void onMenuItemSelected(String selectedItem) {
    setState(() {
      selectedMenuItem = selectedItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(onMenuItemSelected: onMenuItemSelected),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Column(
          children: [
            AppBar(
              title: Text(selectedMenuItem),
              backgroundColor: Colors.white,
            ),
            Divider(
              height: 0, // Ensure the divider has no height to fit seamlessly
              thickness: 1, // Set the thickness of the divider
              color: Colors.grey[900], // Set the color of the divider
            ),
          ],
        ),
      ),
      body: Center(
        child: buildBodyContent(selectedMenuItem),
      ),
    );
  }

  Widget buildBodyContent(String menuItem) {
    switch (menuItem) {
      case 'Home':
        return const Center(
          child: Text(
            'Home Page',
            style: TextStyle(fontSize: 40.0),
          ),
        );
      case 'Upload':
        return const Center(
          child: Text(
            'Upload Page',
            style: TextStyle(fontSize: 40.0),
          ),
        );
      case 'Logout':
        return const Center(
          child: Text(
            'Logout Page',
            style: TextStyle(fontSize: 40.0),
          ),
        );
      default:
        return Container(); // Handle unknown menu items
    }
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var sizeH = MediaQuery.of(context).size.height;
//     var sizeW = MediaQuery.of(context).size.width;
//     return Scaffold(
//         drawer: const SideBar(),
//         appBar: AppBar(
//           title: const Center(child: Text('Home')),
//           backgroundColor: Colors.white,
//         ),
//         body: const Center(
//             child: Text(
//           'MainPage',
//           style: TextStyle(fontSize: 40.0),
//         ))
//         // SharedAppBar(
//         //   screenHeight: sizeH,
//         //   titleText: 'Home',
//         //   showBackButton: false,
//         //   showMenuButton: true,
//         // ),
//         );
//   }
// }

