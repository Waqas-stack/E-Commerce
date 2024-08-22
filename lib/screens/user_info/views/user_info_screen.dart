import 'package:flutter/material.dart';
import 'package:shop/components/buy_full_ui_kit.dart';

import 'ediet_profile.dart';

class UserInfoScreen extends StatelessWidget {
   UserInfoScreen({super.key});
  final _nameController = TextEditingController(text: 'Sepide',);
  final _dobController = TextEditingController(text: 'Oct 31, 1997');
  final _phoneController = TextEditingController(text: '+1–202–555–0162');
  final _genderController = TextEditingController(text: 'Female');
  final _emailController = TextEditingController(text: 'Sepide@piqo.design');

   Widget _buildProfileField(String title, TextEditingController controller) {
     return Padding(
       padding: const EdgeInsets.symmetric(vertical: 8.0),
       child: TextFormField(
         textAlign: TextAlign.right, // Align text to the right

         controller: controller,
         decoration: InputDecoration(
           // labelText: title, // Title inside the field
           prefixText:  title, // Text before the user's input
             // suffixText: controller.text, // Text after the user's input
           border: UnderlineInputBorder(), // Underline border
           focusedBorder: UnderlineInputBorder(
             borderSide: BorderSide(
               color: Colors.grey.shade300, // Color of the underline when focused
               width: 2.0, // Width of the underline when focused
             ),
           ), // Underline border when focused
           enabledBorder: UnderlineInputBorder(
             borderSide: BorderSide(
               color: Colors.grey.shade300, // Color of the underline when focused
               width: 2.0, // Width of the underline when focused
             ),
           ), // Underline border when enabled
fillColor: Colors.transparent,
           contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
         ),
       ),
     );
   }

   // Method to build each profile field with TextFormField
  // Widget _buildProfileField(String title, TextEditingController controller) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 8.0),
  //     child: Row(
  //       children: <Widget>[
  //         // Expanded(
  //         //   child: Text(
  //         //     title,
  //         //     style: TextStyle(
  //         //       fontWeight: FontWeight.bold,
  //         //       fontSize: 16.0,
  //         //     ),
  //         //   ),
  //         // ),
  //         Expanded(
  //           flex: 2,
  //           child: TextFormField(
  //             controller: controller,
  //             decoration: InputDecoration(
  //               border: InputBorder.none,
  //               // border: OutlineInputBorder(),
  //               contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Handle edit button press
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  EdietProfile()),
              );
            },
            child: Text(
              'Edit',
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    'https://i.imgur.com/CGCyp1d.png', // Replace with the actual image URL
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sepide Moqadasi',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'waqas@piqo.design',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32),
            // _buildProfileField('Name', 'Sepide'),
            // _buildProfileField('Date of birth', 'Oct 31, 1997'),
            // _buildProfileField('Phone number', '+1–202–555–0162'),
            // _buildProfileField('Gender', 'Female'),
            // _buildProfileField('Email', 'Sepide@piqo.design'),
            _buildProfileField('Name', _nameController),
            _buildProfileField('Date of Birth', _dobController),
            _buildProfileField('Phone Number', _phoneController),
            _buildProfileField('Gender', _genderController),
            _buildProfileField('Email', _emailController),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle change password press
                    },
                    child: Text(
                      'Change Password',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // return const BuyFullKit(images: [
    //   "assets/screens/Profile.png",
    //   "assets/screens/Edit profile.png"
    // ]);
  }
}



///
///

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Profile Fields'),
//         ),
//         body: ProfileScreen(),
//       ),
//     );
//   }
// }
//
// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   final _nameController = TextEditingController(text: 'Sepide');
//   final _dobController = TextEditingController(text: 'Oct 31, 1997');
//   final _phoneController = TextEditingController(text: '+1–202–555–0162');
//   final _genderController = TextEditingController(text: 'Female');
//   final _emailController = TextEditingController(text: 'Sepide@piqo.design');
//
//   // Method to build each profile field with TextFormField
//   Widget _buildProfileField(String title, TextEditingController controller) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Text(
//               title,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16.0,
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: TextFormField(
//               controller: controller,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           _buildProfileField('Name', _nameController),
//           _buildProfileField('Date of Birth', _dobController),
//           _buildProfileField('Phone Number', _phoneController),
//           _buildProfileField('Gender', _genderController),
//           _buildProfileField('Email', _emailController),
//         ],
//       ),
//     );
//   }
// }
//
