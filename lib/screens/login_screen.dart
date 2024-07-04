import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left_outlined),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 370,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Choose your country or region",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 20.0,
                                ),
                              ),
                            ],
                          ),
                          CheckboxItem(
                            label: "Option 1",
                          ),
                          CheckboxItem(
                            label: "Option 2",
                          ),
                          CheckboxItem(
                            label: "Option 3",
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Colors.black),
                              backgroundColor: Colors.black,
                              minimumSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              'OK',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  );
                },
              );
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
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome To Baseus",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              'Account',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            Spacer(),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.yellow[100],
                suffixIcon: Icon(Icons.visibility_off),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/HomeScreen');
              },
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.black),
                backgroundColor: Colors.yellow[600],
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              child: Row(
                children: [
                  Text(
                    "Email Sign In",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
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
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

class CheckboxItem extends StatefulWidget {
  final String label;

  const CheckboxItem({Key? key, required this.label}) : super(key: key);

  @override
  _CheckboxItemState createState() => _CheckboxItemState();
}

class _CheckboxItemState extends State<CheckboxItem> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        Spacer(),
        Transform.scale(
          scale: 1.15, // Adjust this value to change the size
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
                  _isChecked = value ?? false;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
