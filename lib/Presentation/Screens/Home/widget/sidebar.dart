// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  final Function(String) onMenuItemSelected;

  const SideBar({super.key, required this.onMenuItemSelected});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Genet Tesfaye',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: const Text(
              'gtesfaye2127@gmail.com',
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/avatar.png'),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sidebar.avif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                onMenuItemSelected('Home');
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.upload),
              title: const Text('Upload'),
              onTap: () {
                onMenuItemSelected('Upload');
                Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                onMenuItemSelected('Logout');
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class SideBar extends StatelessWidget {
//   const SideBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           UserAccountsDrawerHeader(
//             accountName: const Text(
//               'Genet Tesfaye',
//               style: TextStyle(color: Colors.white),
//             ),
//             accountEmail: const Text(
//               'gtesfaye2127@gmail.com',
//               style: TextStyle(color: Colors.white),
//             ),
//             currentAccountPicture: CircleAvatar(
//               child: ClipOval(
//                 child: Image.asset('assets/images/avatar.png'),
//               ),
//             ),
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage('assets/images/sidebar.avif'),
//                     fit: BoxFit.cover)),
//           ),
//           ListTile(
//             leading: const Icon(Icons.file_upload),
//             title: const Text('Home'),
//             onTap: () => print('Upload file'),
//           ),
//           ListTile(
//             leading: const Icon(Icons.file_upload),
//             title: const Text('Upload shot'),
//             onTap: () => print('Upload file'),
//           ),
//           ListTile(
//             leading: const Icon(Icons.file_upload),
//             title: const Text('Upload shot'),
//             onTap: () => print('Upload file'),
//           ),
//           ListTile(
//             leading: const Icon(Icons.file_upload),
//             title: const Text('Upload shot'),
//             onTap: () => print('Upload file'),
//           ),
//           ListTile(
//             leading: const Icon(Icons.file_upload),
//             title: const Text('Upload shot'),
//             onTap: () => print('Upload file'),
//           ),
//           ListTile(
//             leading: const Icon(Icons.file_upload),
//             title: const Text('Upload shot'),
//             onTap: () => print('Upload file'),
//           ),
//           ListTile(
//             leading: const Icon(Icons.logout),
//             title: const Text('Logout'),
//             onTap: () => print('Upload file'),
//           ),
//         ],
//       ),
//     );
//   }
// }




