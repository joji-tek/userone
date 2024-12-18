import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user1/login/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  XFile? _profileImage;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _profileImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Account",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ProfileImagePicker(
                pickImage: _pickImage, profileImage: _profileImage),
            SizedBox(height: 20),
            CustomTextField(
                controller: nameController,
                label: "Full Name",
                icon: Icons.person),
            SizedBox(height: 20),
            CustomTextField(
                controller: emailController, label: "Email", icon: Icons.email),
            SizedBox(height: 20),
            CustomTextField(
                controller: passwordController,
                label: "Password",
                icon: Icons.lock,
                obscureText: true),
            SizedBox(height: 30),
            Text("Choose your main service to offer",
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            RedirectUser1Button(),
            SizedBox(height: 10),
            RedirectUser2Button(),
          ],
        ),
      ),
    );
  }
}

class RedirectUser1Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoleSpecificForm(role: "Buy/Sell/Rent"),
          ),
        );
      },
      child: Text("Buy/Sell/Rent"),
    );
  }
}

class RedirectUser2Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoleSpecificForm(role: "Car Repair Shop"),
          ),
        );
      },
      child: Text("Car Repair Shop"),
    );
  }
}

class ProfileImagePicker extends StatelessWidget {
  final VoidCallback pickImage;
  final XFile? profileImage;

  const ProfileImagePicker({
    required this.pickImage,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pickImage,
      child: CircleAvatar(
        radius: 50,
        backgroundImage:
            profileImage != null ? FileImage(File(profileImage!.path)) : null,
        child: profileImage == null ? Icon(Icons.camera_alt, size: 40) : null,
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final bool obscureText;

  const CustomTextField({
    required this.controller,
    required this.label,
    required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(icon),
      ),
    );
  }
}

class RoleSpecificForm extends StatefulWidget {
  final String role;

  const RoleSpecificForm({required this.role});

  @override
  _RoleSpecificFormState createState() => _RoleSpecificFormState();
}

class _RoleSpecificFormState extends State<RoleSpecificForm> {
  late Map<String, bool> options;

  @override
  void initState() {
    super.initState();
    if (widget.role == "Buy/Sell/Rent") {
      options = {
        "Buy a Car": false,
        "Sell a Car": false,
        "Rent a Car": false,
        "Browse Options": false,
      };
    } else if (widget.role == "Car Repair Shop") {
      options = {
        "Engine Repair": false,
        "Body Works": false,
        "Car Accessories": false,
        "Maintenance and Servicing": false,
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Additional Details")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Role-Specific Details for ${widget.role}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              widget.role == " Buy/Sell/Rent "
                  ? "I am here mainly to..."
                  : "My services offerings icludes...",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ...options.keys.map((String key) {
              return CheckboxListTile(
                title: Text(key),
                value: options[key],
                onChanged: (bool? value) {
                  setState(() {
                    options[key] = value!;
                  });
                },
              );
            }).toList(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // final selectedOptions = options.entries
                //     .where((entry) => entry.value)
                //     .map((entry) => entry.key)
                //     .toList();
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text("Selected: ${selectedOptions.join(", ")}"),
                //   ),
                // );
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
