// initial_screen.dart
import 'package:baseus/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              // Aksi ketika tombol Europe ditekan
            },
            child: Row(
              children: [
                Text(
                  'Europe',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.arrow_right_outlined,
                  size: 24.0,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.white, // Warna latar belakang putih
        elevation: 0, // Menghapus bayangan
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset('assets/icons/logo.png', height: 100),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.yellow[600],
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Ubah nilai ini untuk menentukan seberapa rounded sudutnya
                ),
              ),
              child: Text(
                'Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Navigate to home screen
                Get.toNamed('/HomeScreen');
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      15), // Ubah nilai ini untuk menentukan seberapa rounded sudutnya
                ),
              ),
              child: Text(
                'Start Now',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Transform.scale(
                  scale: 1.12, // Adjust this value to change the size
                  child: Theme(
                    data: ThemeData(
                      checkboxTheme: CheckboxThemeData(
                        shape: CircleBorder(),
                        side: BorderSide(color: Colors.grey),
                        checkColor: WidgetStateProperty.all(Colors.yellow),
                        fillColor: WidgetStateProperty.resolveWith((states) {
                          if (states.contains(WidgetState.selected)) {
                            return Colors.black;
                          }
                          return null; // Use default color when not selected
                        }),
                      ),
                    ),
                    child: Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                    child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'I have read and agree to the ',
                      ),
                      TextSpan(
                        text: '"User Agreement"',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ' & ',
                      ),
                      TextSpan(
                        text: '"Privacy Policy"',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ' by registering',
                      ),
                    ],
                  ),
                )),
              ],
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Other Login',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/icons/Amazon_icon.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
