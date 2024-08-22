import 'package:flutter/material.dart';

class EdietProfile extends StatefulWidget {
  const EdietProfile({super.key});

  @override
  State<EdietProfile> createState() => _EdietProfileState();
}

class _EdietProfileState extends State<EdietProfile> {
  final _nameController = TextEditingController(text: 'Sepide',);
  final _dobController = TextEditingController(text: 'Oct 31, 1997');
  final _phoneController = TextEditingController(text: '+1–202–555–0162');
  final _genderController = TextEditingController(text: 'Female');
  final _emailController = TextEditingController(text: 'Sepide@piqo.design');

  Widget _buildProfileField(String title, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        // textAlign: TextAlign.center, // Align text to the right

        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          // labelText: title, // Title inside the field
          // prefixText:  Icon, // Text before the user's input
          // suffixText: controller.text, // Text after the user's input
          border: InputBorder.none, // Underline border
          focusedBorder: InputBorder.none,// Underline border when focused
          enabledBorder: InputBorder.none,// Underline border when enabled
          // fillColor: Colors.transparent,
          // contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
        ),
      ),
    );
  }
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
            Column(

              children: [
                Center(
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      'https://i.imgur.com/CGCyp1d.png', // Replace with the actual image URL
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'Edit photo',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32),
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
  }
}
