import 'package:flutter/material.dart';
import 'package:safe_com/Core/navigation/AppNavigator.dart';
import 'package:safe_com/Core/navigation/app_routes.dart';

class SetupInfoContent extends StatefulWidget {
  const SetupInfoContent({super.key});

  @override
  State<SetupInfoContent> createState() => _SetupInfoContentState();
}

class _SetupInfoContentState extends State<SetupInfoContent> {
  String? selectedGender;

  void onGenderChanged(String? gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  void onProfileImageTapped() {
    // TODO: Add image picker functionality here
    print("Profile image picker tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 40),

            // Title
            const Text(
              'Setup information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 60),

            // Profile Image Placeholder with "+" Button
            Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white70,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: onProfileImageTapped,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.add,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Name Field
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Enter your name'),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Your name",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: const BorderSide(color: Colors.black, width: 2),
                ),
                contentPadding: const EdgeInsets.all(16),
              ),
            ),

            const SizedBox(height: 30),

            // NIC Field
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Enter your NIC'),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Your NIC",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: const BorderSide(color: Colors.black, width: 2),
                ),
                contentPadding: const EdgeInsets.all(16),
              ),
            ),

            const SizedBox(height: 40),

            // Gender Selection
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Select your gender'),

            ),
            const SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildGenderOption('Male'),
                const SizedBox(width: 10),
                buildGenderOption('Female'),
                const SizedBox(width: 10),
                buildGenderOption('Other'),
              ],
            ),

            const Spacer(),

            // Continue Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  AppNavigator.replaceWith(AppRoutes.setup); // Update with your route
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildGenderOption(String gender) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<String>(
          value: gender,
          groupValue: selectedGender,
          onChanged: onGenderChanged,
          activeColor: Colors.black,
        ),
        Text(gender),
      ],
    );
  }
}
