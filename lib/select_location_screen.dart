import 'package:flutter/material.dart';
import 'package:food_delivery_app/home_screen.dart';
import 'package:food_delivery_app/login_signup_screen.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  String? _selectedCity;
  String? _selectedArea;

  Widget _buildDropdown(String hintText, List<String> items, String? value,
      void Function(String?) onChanged) {
    return DropdownButton<String>(
      isExpanded: true,
      hint: Text(
        hintText,
        style: const TextStyle(fontSize: 14, color: Colors.black),
      ),
      value: value,
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }

  Widget _buildElevatedButton(String text, Function() onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              child: Text(
                text,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginSignup(),
                  ),
                );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Icon(
                  Icons.location_pin,
                  size: 100,
                  color: Colors.orange,
                ),
                const SizedBox(height: 25),
                const Text(
                  'Select Your Location',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Switch on your location to stay in tune',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your City:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth,
                      child: _buildDropdown(
                        'Select City',
                        ['City 1', 'City 2', 'City 3'],
                        _selectedCity,
                        (newValue) {
                          setState(() {
                            _selectedCity = newValue;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Your Area:',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth,
                      child: _buildDropdown(
                        'Select Area',
                        ['Area 1', 'Area 2', 'Area 3'],
                        _selectedArea,
                        (newValue) {
                          setState(() {
                            _selectedArea = newValue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildElevatedButton('Submit', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                }),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
