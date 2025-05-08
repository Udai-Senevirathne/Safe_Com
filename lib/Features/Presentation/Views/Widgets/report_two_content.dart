import 'package:flutter/material.dart';

class ReportContentTwo extends StatefulWidget {
  const ReportContentTwo({super.key});

  @override
  State<ReportContentTwo> createState() => _ReportContentState();
}

class _ReportContentState extends State<ReportContentTwo> {
  String _selectedDisaster = "Tsunami";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Receive a report",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text("Select location", style: TextStyle(fontSize: 16.0)),
              const SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: "Select location",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.gps_fixed),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Gender",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: [
                  _buildRadioOption("Male"),
                  _buildRadioOption("Female"),
                  _buildRadioOption("Other"),
                ],
              ),

              const SizedBox(height: 16.0),
              const Text("Description", style: TextStyle(fontSize: 16.0)),
              const SizedBox(height: 8.0),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Text("Upload image", style: TextStyle(fontSize: 16.0)),
              const SizedBox(height: 8.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                    child: Text(
                      "Click here to upload\nJPG, PNG, MP4 | Max file size 10MB",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Disaster Type: $_selectedDisaster");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    "Report",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRadioOption(String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<String>(
          value: value,
          groupValue: _selectedDisaster,
          onChanged: (val) {
            setState(() {
              _selectedDisaster = val!;
            });
          },
        ),
        Text(value),
      ],
    );
  }
}
